cask "folderserve" do
  version "0.1.3"
  sha256 "ec344970795bf58ac67f2c82eece52b93fbb608088eaf32906ba31b6977fe1ce"

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
