class TmuxLazySession < Formula
  desc "Tmux sessions for lazy people"
  homepage "https://github.com/ingara/tmux-lazy-session"
  url "https://github.com/ingara/tmux-lazy-session.git", tag: "v1.0.6", revision: "196db8a974890b2dd518d6c57ac46ee2a36ac4d4"
  sha256 ""
  version "v1.0.6"
  license ""

  head "https://github.com/ingara/tmux-lazy-session.git", shallow: false

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "tmux-lazy-session"
    bin.install "target/release/tmux-lazy-session"
  end
end
