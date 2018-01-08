
class Serve < Formula
  desc "A simple HTTP server for serving static files."
  homepage "https://github.com/sandeepraju/serve"
  url "https://github.com/sandeepraju/serve/releases/download/v0.0.1/serve.zip"
  sha256 "a295bafea1eccb4001562a98e571714caebe8673ff1dd410061ac8f432386805"
  head "https://github.com/sandeepraju/serve.git"

  bottle :unneeded

  def install
    prefix.install "serve", "serve"
    bash_completion.install "bash_completion" => "serve"
  end

  test do
    system "#{bin}/serve", "--version"
    system libexec/"serve", "--version"
  end
end
