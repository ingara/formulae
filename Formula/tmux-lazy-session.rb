class TmuxLazySession < Formula
  desc "Tmux sessions for lazy people"
  homepage "https://github.com/ingara/tmux-lazy-session"
  url "https://github.com/ingara/tmux-lazy-session.git", tag: "v1.0.7", revision: "d6fe5a46863973357b49de02f3b2b8d757e95c8e"
  sha256 ""
  version "v1.0.7"
  license ""

  head "https://github.com/ingara/tmux-lazy-session.git", shallow: false

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "tmux-lazy-session"
    bin.install "target/release/tmux-lazy-session"
  end
end
