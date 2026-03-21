class Predihermes < Formula
  include Language::Python::Virtualenv

  desc "One-command installer for the PrediHermes local edition"
  homepage "https://github.com/nativ3ai/prediup"
  url "https://github.com/nativ3ai/prediup/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "67cb1f4408c8d2e66d889a2396dcd248a70abbc99870bfe47d11571e33502c26"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    output = shell_output("#{bin}/predihermes --help")
    assert_match "Installer for the PrediHermes local edition", output
  end
end
