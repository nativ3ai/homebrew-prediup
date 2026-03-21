class Predihermes < Formula
  include Language::Python::Virtualenv

  desc "One-command installer for the PrediHermes local edition"
  homepage "https://github.com/nativ3ai/prediup"
  url "https://github.com/nativ3ai/prediup/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "b349ad77bc8b4c2bb15be369cdf8ed708778a2d76a69e3bfca405ad8dca974a2"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    output = shell_output("#{bin}/prediup --help")
    assert_match "Installer for the PrediHermes local edition", output
  end
end
