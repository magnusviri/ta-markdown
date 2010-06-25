-- Markdown module.
-- Robert Gieseke, robert.gieseke@gmail.com
-- freely distributable under the same license as Textadept (MIT)

module('_m.markdown', package.seeall)

if type(_G.snippets) == 'table' then
-- Container for Markdown-specific snippets.
-- @class table
-- @name snippets.markdown
  _G.snippets.markdown = {}
end

if type(_G.keys) == 'table' then
-- Container for Markdown-specific key commands.
-- @class table
-- @name keys.markdown
  _G.keys.markdown = {}
end

require 'markdown.commands'
require 'markdown.snippets'

function set_buffer_properties()
  if not buffer.use_tabs then
    buffer.indent = 4
  end
--  events.connect('update_ui', word_count, 1)
end