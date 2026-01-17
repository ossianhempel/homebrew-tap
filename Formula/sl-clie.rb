class SlClie < Formula
  desc "CLI for SL journey planning and departures"
  homepage "https://github.com/ossianhempel/sl-clie"
  url "https://github.com/ossianhempel/sl-clie/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "8ba47ec1c67cea6a19dd4af57f63643b34cd6f21b50fc2906784a226cc36fb70"
  version "0.1.0"

  depends_on "node"

  def install
    ENV["NODE_ENV"] = "development"
    system "npm", "install", "--prefix", libexec
    system "npm", "run", "build", "--prefix", libexec/"lib/node_modules/sl-clie"
    bin.install_symlink "#{libexec}/bin/sl-clie"
  end

  test do
    system "#{bin}/sl-clie", "--version"
  end
end
