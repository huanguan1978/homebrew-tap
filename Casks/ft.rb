cask "ft" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  version "1.0.7"
  sha256 arm:          "d3bf858074c7fd1685d05e99daad13e83cbf89d37c14bde811c0366aafd9a711",
         x86_64:       "54688bfb3c8716871a36325e8a36e2d0af3fe0ecd2d1f4a08c404104195e6542",
         arm64_linux:  "15acc33d060593f8a18c9d33c9a368fc736de45635181c65df3f35d9f873af62",
         x86_64_linux: "7dece6d6d604a2278512cfe8432630ad0056330099108dd8418a1c94c91fb011"

  url "https://github.com/huanguan1978/ft/releases/download/v#{version}/ft-#{os}-#{arch}-#{version}.zip",
      verified: "github.com/huanguan1978/ft/"
  name "ft"
  desc "High-performance CLI file management and automation tool (FileTools)"
  homepage "https://github.com/huanguan1978/ft"

  depends_on macos: :sonoma

  binary "build/ft-#{version}-#{os}-#{arch}", target: "ft"

  caveats <<~EOS
    ft (FileTools) is a high-performance, cross-platform CLI tool
    for file management and workflow automation. It excels at
    precision file discovery using glob patterns, file states
    (time, size), and MIME-type detection. Beyond discovery,
    ft supports regex-based search-and-replace, and enables
    complex batch processing via built-in subcommands or by
    orchestrating native system CLI applications as a universal
    shell task runner.

    To learn more about how ft empowers you to bypass the limitations of
    standard shell scripts and toolchains, please explore our FAQ:
    https://github.com/huanguan1978/ft/blob/main/doc/en/FAQ.md
  EOS
end
