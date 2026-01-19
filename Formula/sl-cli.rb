class SlCli < Formula
  desc "CLI for SL journey planning and departures"
  homepage "https://github.com/ossianhempel/sl-cli"
  url "https://github.com/ossianhempel/sl-cli/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "55d78c5c94e6e7703d164aeeee2be2c5c7d0ea29845e431466448fadb56b86e3"
  version "0.1.1"

  depends_on "node"

  def install
    ENV["NODE_ENV"] = "development"
    system "npm", "install", "--prefix", libexec
    system "npm", "run", "build", "--prefix", libexec/"lib/node_modules/sl-cli"
    bin.install_symlink "#{libexec}/bin/sl-cli"
  end

  test do
    system "#{bin}/sl-cli", "--version"
  end
end
