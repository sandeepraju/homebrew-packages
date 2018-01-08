
class Serve < Formula
  desc "A simple HTTP server for serving static files."
  homepage "https://github.com/sandeepraju/serve"
  url "https://github.com/sandeepraju/serve/releases/download/v0.0.1/serve.zip"
  mirror "https://github.com/sandeepraju/serve/releases/download/v0.0.1/serve.zip"
  sha256 "a295bafea1eccb4001562a98e571714caebe8673ff1dd410061ac8f432386805"

  bottle :unneeded

  head do
    url "https://github.com/sandeepraju/serve.git"
  end

  keg_only :provided_by_osx

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/serve"
  end

  test do
    system "#{bin}/serve", "--version"
    system libexec/"serve", "--version"
  end
end
