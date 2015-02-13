TerminalSession = require '../lib/terminal-session'
{WorkspaceView} = require 'atom'

describe "Terminal", ->
  beforeEach ->
    atom.views.getView(atom.workspace = new WorkspaceView
    atom.packages.activatePackage 'terminal'

  describe "the terminal:open command", ->
    it "opens a terminal session for the given path in the current pane", ->
      atom.views.getView(atom.workspace.trigger 'terminal:open'

      waitsFor ->
        atom.views.getView(atom.workspace.getActivePaneItem()

      runs ->
        expect(atom.views.getView(atom.workspace.getActivePaneItem() instanceof TerminalSession).toBe true
