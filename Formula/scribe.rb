class Scribe < Formula
  desc "A lightweight static site generator built in pure Go with zero external dependencies"
  homepage "https://github.com/dikaio/scribe"
  url "https://github.com/dikaio/scribe/archive/refs/tags/v0.4.9.tar.gz"
  sha256 "f1aa3969db20391cd19ff5fdefcccd179301bef579a26089ecb8235187b610cd"
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