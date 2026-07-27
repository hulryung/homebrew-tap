class Ttyforge < Formula
  desc "Forge virtual serial ports: null-modem pairs, device simulators, bridges, muxes"
  homepage "https://github.com/hulryung/ttyforge"
  url "https://github.com/hulryung/ttyforge/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "817ada46bf0369843a9d27cb744e8494d63d2654ba5226d9b340efd6f1ce9a41"
  license any_of: ["MIT", "Apache-2.0"]
  head "https://github.com/hulryung/ttyforge.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    require "timeout"

    # The readiness contract is the whole interface: a forge publishes the
    # ports it created and holds them open until it is killed.
    a = testpath/"a.pty"
    b = testpath/"b.pty"
    pid = spawn((bin/"ttyforge").to_s, "pair", "--link", a.to_s, "--link", b.to_s,
                out: (testpath/"out").to_s)
    begin
      Timeout.timeout(30) { sleep 0.1 until a.symlink? && b.symlink? }
      # …and bytes cross the virtual cable unchanged, which is the point.
      File.open(b, File::RDWR | File::NOCTTY) do |reader|
        File.open(a, File::RDWR | File::NOCTTY) do |writer|
          writer.write("ttyforge\n")
          writer.flush
          assert_equal "ttyforge\n", Timeout.timeout(30) { reader.readpartial(9) }
        end
      end
    ensure
      Process.kill("TERM", pid)
      Process.wait(pid)
    end

    assert_match "ttyforge", shell_output("#{bin}/ttyforge --version")
  end
end
