class Tunnelblickctl < Formula
  desc "Command-line interface for Tunnelblick"
  homepage "https://github.com/benwebber/tunnelblickctl"
  url "https://github.com/benwebber/tunnelblickctl/archive/v0.2.0.tar.gz"
  sha256 "f0a0b3885dd5f8351c6e3b6b9e7e428d2e69257e33a2a53ef641c2365af61556"
  head "https://github.com/benwebber/tunnelblickctl.git"

  depends_on "rust" => :build
  depends_on "node" => :build
  depends_on "yarn" => :build

  def install
    ENV["PATH"] = "#{buildpath}/node_modules/.bin:#{ENV["PATH"]}"
    system "yarn", "install"
    system "make"
    bin.install "tunnelblickctl"
    bash_completion.install "contrib/tunnelblick.bash" => "tunnelblickctl"
  end

  test do
    assert_match "tunnelblickctl", `#{bin}/tunnelblickctl help`.chomp
  end
end
