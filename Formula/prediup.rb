class Prediup < Formula
  include Language::Python::Virtualenv

  desc "One-command installer for the PrediHermes local edition"
  homepage "https://github.com/nativ3ai/prediup"
  url "https://github.com/nativ3ai/prediup/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "e668720db7d5a91a496adf36e701bad4dce0404ed5c4dc72fc927ef1bef64e59"
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
