class Tunnelblickctl < Formula
  desc "Command-line interface for Tunnelblick"
  homepage "https://github.com/benwebber/tunnelblickctl"
  version "0.3.0"

  on_arm do
    url "https://github.com/benwebber/tunnelblickctl/releases/download/v0.3.0/tunnelblickctl-v0.3.0-aarch64-apple-darwin.tar.gz"
    sha256 "0a69784ee21a1f2eb90ce45ba118beaec8d179c967580a0dda01b2cdea06835a"
  end

  on_intel do
    url "https://github.com/benwebber/tunnelblickctl/releases/download/v0.3.0/tunnelblickctl-v0.3.0-x86_64-apple-darwin.tar.gz"
    sha256 "19b7c24845cc46ff7b938c1c8f6a8b3c436bf0a42e7db0713339157be7957efc"
  end

  def install
    bin.install "tunnelblickctl"
  end

  test do
    assert_match "tunnelblickctl", `#{bin}/tunnelblickctl help`.chomp
  end
end
