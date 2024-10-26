local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.config.setup({
  history = true,
  update_events = "TextChanged,TextChangedI",
  enable_autosnippets = true,
})

ls.add_snippets("cpp", {
  s("myfunc", {
    t("#define myfunc() cout << 'c' << endl"),
  }),

  s("cpptemp", {
    t({
      "#include<bits/stdc++.h>",
      "#define ll long long",
      '#define deb(x) cout << #x << " : " << x << endl;',
      "#define take_input(a) for(auto &x : a) cin >> x;",
      '#define _output(a) for(auto &x: a) cout << x << " "; cout << endl;',
      "#define srt(a) sort(a.begin(), a.end())",
      "using namespace std;",
      "",
      "int main() {",
      "    int T=1;",
      "    cin >> T;",
      "",
      "    while(T--) {",
      "",
    }),
    i(1, "        "), -- Insert node
    t({
      "",
      "  }",
      "",
      "  return 0;",
      "}",
    }),
  }),
})
