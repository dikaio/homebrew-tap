class Scribe < Formula
  desc "A lightweight static site generator built in pure Go with zero external dependencies"
  homepage "https://github.com/dikaio/scribe"
  url "https://github.com/dikaio/scribe/archive/refs/tags/v0.4.8.tar.gz"
  sha256 "3cab1b88266e0b9dc8e21ddb00ee14cad97343974af53e9295fbba28dd3549ee"
  license "MIT"
  head "https://github.com/dikaio/scribe.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/scribe"
  end

  test do
    mkdir_p "mysite"
    cd "mysite" do
      system bin/"scribe", "new", "site", "."
      assert_predicate testpath/"mysite/config.jsonc", :exist?
    end
  end
end