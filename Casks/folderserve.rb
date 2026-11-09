cask "folderserve" do
  version "0.1.6"
  sha256 "0e3344d13e72b85ed45771c16f6407a2f56dee4c5a1885103a8e17b8485398f0"

  url "https://github.com/fatihsenel/FolderServe/releases/download/v#{version}/FolderServe-#{version}.zip"
  name "FolderServe"
  desc "Serves folders over HTTP on localhost with live reload and a request log"
  homepage "https://github.com/fatihsenel/FolderServe"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "FolderServe.app"

  zap trash: [
    "~/Library/Containers/com.fatihsenel.FolderServe",
    "~/Library/Saved Application State/com.fatihsenel.FolderServe.savedState",
  ]
end
