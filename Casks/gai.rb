# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "gai" do
  version "1.2.7"
  # sha256 "3393d265b3b88a72772128ef8abab88212b80cd9b20c143d4906691dcbe6e416"
  sha256 :no_check

  url "https://webpath.iche2.com/release/Gai-#{version}-universal.dmg"
  name "Gai"
  desc "Generative-AI Tools For Beginner"
  homepage "https://webpath.iche2.com/gaidoc/en/"

  def caveats 
    <<~EOS
     💡 No ads, No registration, No other permissions required. Internet connection only.

     Features:
       - Multimodal: Text, images, and videos.
       - User-friendly: Manage prompts, instructions, and parameters with ease.
       - Scheduled Tasks: Pre-set timing for automatic content generation.
       - Private Libraries: Support for offline/online prompt storage.
       - Flexible Output: Save to local logs or your private network server.

     Full-featured, customizable, and easy to master!

     🚀 Quick Start:
       To view the full documentation, run:
         brew home gai
       Or visit: https://webpath.iche2.com/gaidoc/en/started/ 
    EOS
  end

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url "https://webpath.iche2.com/release/"
    regex(/Gai-(\d+(?:\.\d+)*)-universal\.dmg/i)
    strategy :page_match
  end

  depends_on macos: ">= :catalina"

  app "Gai.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: [
    "~/Library/Caches/com.iche2.gai.macos",
  ]
end
