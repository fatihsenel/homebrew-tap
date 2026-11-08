cask "folderserve" do
  version "0.1.1"
  sha256 "38ca279165b27d0fe95e6dd03b89dae02101253d029735e7adf39cf9e58d046e"

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
