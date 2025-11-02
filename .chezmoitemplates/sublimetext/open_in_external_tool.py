import sublime
import sublime_plugin
import subprocess

APP_COMMANDS = {
  "fork": ["fork", "open", "-C"],
  "notepad++": [
    "notepad++.exe",
    "-nosession",
    "-multiInst",
    "-openFoldersAsWorkspace",
  ],
  "sublime_merge": ["smerge", "--launch-or-new-window"],
  "vscode": ["code"],
  "vscodium": ["codium"],
  "zed": ["zed", "--new"],
}


class OpenDirectoryInCommand(sublime_plugin.ApplicationCommand):
  def run(self, app=""):
    window = sublime.active_window()
    folders = window.folders()
    if not folders:
      sublime.message_dialog("No folder opened in this project.")
      return

    command = APP_COMMANDS.get(app)
    if not command:
      sublime.message_dialog(f"Unsupported app: {app}")
      return

    folder_path = folders[0]

    try:
      subprocess.Popen(command + [folder_path])
    except Exception as e:
      sublime.message_dialog(f"Failed to open {app}: {str(e)}")
