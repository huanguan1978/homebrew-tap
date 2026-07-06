cask "chapose" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  version "1.0.0"
  sha256 arm:          "febca308870a0308f5a15c8c64bec633dffbbe52f4ba32bb5dd347ee162091cd",
         x86_64:       "21335fa8908b0f233fae7eeeca4a1b822c5fb1fe51207d005ece9963f8adf613",
         arm64_linux:  "a30e313a1e68af7adf2540f1f5ebe5fdd0e27d0b121f6cdfd03064e274179784",
         x86_64_linux: "bf92732a1c74a6690bb3e7da190686eab140a76de7430de7d1e7a2f05e78c102"

  url "https://github.com/huanguan1978/chacrypt/releases/download/chapose-v#{version}/chapose-#{os}-#{arch}-#{version}.zip",
      verified: "github.com/huanguan1978/chacrypt/"
  name "chapose"
  desc "Modern High-Performance File Security Tool"
  homepage "https://github.com/huanguan1978/chacrypt"

  depends_on macos: :sonoma

  binary "build/chapose-#{version}-#{os}-#{arch}", target: "chapose"

  caveats <<~EOS
    Chapose is a professional-grade command-line tool
    powered by the ChaCha20-Poly1305 AEAD algorithm.
    Designed for high performance, automation, and robust security,
    it is the specialized CLI component of the ChaCrypt ecosystem.

    To learn more about how ft empowers you to bypass the limitations of
    standard shell scripts and toolchains, please explore our Best Practices:
    https://github.com/huanguan1978/chacrypt/tree/main/chapose
  EOS
end
