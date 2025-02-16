local highlight = require("baleia.highlight")

describe("[all]", function()
   it("", function()
      local lines = { "; first line\x1b[32m ", "; \x1b[31msecond line" }

      assert.combinators.match({
            highlights = {
             { line = 1, firstcolumn = 18, name = "B_2_none" },
             { line = 2, firstcolumn = 8,  name = "B_1_none" } },
           definitions = {
             B_1_none = { guifg = "#800000", ctermfg = 1 },
             B_2_none = { guifg = "#008000", ctermfg = 2 },
           },
         },
         highlight.all({ name = 'B', line_starts_at = 3, colors = { cterm = { }, gui = { } } },
                       { global = { column = 0, line = 0 } },
                       lines))
   end)
end)
