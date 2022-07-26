local ansi = {}

ansi.PATTERN = "\x1b[[0-9][:;0-9]*m"

ansi.foreground = {
  [30] =  0,
  [31] =  1,
  [32] =  2,
  [33] =  3,
  [34] =  4,
  [35] =  5,
  [36] =  6,
  [37] =  7,
  [39] =  'none',
  [90] =  8,
  [91] =  9,
  [92] = 10,
  [93] = 11,
  [94] = 12,
  [95] = 13,
  [96] = 14,
  [97] = 15,
}

ansi.background = {
   [40] =  0,
   [41] =  1,
   [42] =  2,
   [43] =  3,
   [44] =  4,
   [45] =  5,
   [46] =  6,
   [47] =  7,
   [49] =  'none',
  [100] =  8,
  [101] =  9,
  [102] = 10,
  [103] = 11,
  [104] = 12,
  [105] = 13,
  [106] = 14,
  [107] = 15,
}

ansi.modes = {
  [1] = "bold",
  [3] = "italic",
  [4] = "underline",
  [7] = "reverse",
  [9] = "strikethrough"
}

ansi.disable_modes = {
  [21] = "bold",
  [23] = "italic",
  [24] = "underline",
  [27] = "reverse",
  [29] = "strikethrough"
}

return ansi
