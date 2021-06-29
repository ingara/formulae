class TmuxLazySession < Formula
  desc "Tmux sessions for lazy people"
  homepage "https://github.com/ingara/tmux-lazy-session"
  url "https://github.com/ingara/tmux-lazy-session.git", tag: "v1.0.3", revision: "3ff1ac1b6ff6b00061fda4c4238d502c815777c4"
  sha256 ""
  version "v1.0.3"
  license ""


  bottle do
    root_url "https://github.com/ingara/tmux-lazy-session/releases/download/v1.0.3"
    rebuild 1
    sha256 cellar: :any, big_sur: ""
  end

  head "https://github.com/ingara/tmux-lazy-session.git", shallow: false

  def install
    bin.install "tmux-lazy-session"
  end
end
