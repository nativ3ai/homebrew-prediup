class Predihermes < Formula
  include Language::Python::Virtualenv

  desc "One-command installer for the PrediHermes local edition"
  homepage "https://github.com/nativ3ai/prediup"
  url "https://github.com/nativ3ai/prediup/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "8ea9df172c47a32fc24c00dc596b10f659eaf3198e77f3d1b92b7547a9c392d5"
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
