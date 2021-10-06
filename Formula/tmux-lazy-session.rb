class TmuxLazySession < Formula
  desc "Tmux sessions for lazy people"
  homepage "https://github.com/ingara/tmux-lazy-session"
  url "https://github.com/ingara/tmux-lazy-session.git", tag: "v1.0.5", revision: "86e6a2d7961833f5e0016a49aaafde9a941adc5e"
  sha256 ""
  version "v1.0.5"
  license ""

  head "https://github.com/ingara/tmux-lazy-session.git", shallow: false

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "tmux-lazy-session"
    bin.install "target/release/tmux-lazy-session"
  end
end
