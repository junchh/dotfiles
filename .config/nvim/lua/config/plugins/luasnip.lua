return {
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!).
	build = "make install_jsregexp",
	config = function()
		local ls = require("luasnip")
		local s = ls.snippet
		local t = ls.text_node
		local i = ls.insert_node

		ls.add_snippets("cpp", {
			s("cp", {
				t({
					"#include <bits/stdc++.h>",
					"",
					"using namespace std;",
					"",
					"using ll = long long;",
					"",
					"int main() {",
					"\tios::sync_with_stdio(false);",
					"\tcin.tie(nullptr);",
					"",
					"\t",
				}),
				i(0),
				t({
					"",
					"\treturn 0;",
					"}",
				}),
			}),
			s("cf", {
				t({
					"#include <bits/stdc++.h>",
					"",
					"using namespace std;",
					"",
					"using ll = long long;",
					"",
					"void solve() {",
					"\t",
				}),
				i(0),
				t({
					"",
					"}",
					"",
					"int main() {",
					"\tios::sync_with_stdio(false);",
					"\tcin.tie(nullptr);",
					"",
					"\tint t;",
					"\tcin >> t;",
					"\twhile (t--) {",
					"\t\tsolve();",
					"\t}",
					"\treturn 0;",
					"}",
				}),
			}),
			s("mov", {
				t("pair<int, int> mov[4] = {{1, 0}, {0, 1}, {-1, 0}, {0, -1}};"),
			}),
			s("bpow", {
				t({
					"ll binpow(ll a, ll b, ll m) {",
					"\ta = a % m;",
					"\tll res = 1;",
					"\twhile (b > 0) {",
					"\t\tif (b & 1)",
					"\t\t\tres = (res * a) % m;",
					"\t\ta = (a * a) % m;",
					"\t\tb >>= 1;",
					"\t}",
					"\treturn res;",
					"}",
				}),
			}),
			s("bpmod", {
				t({
					"ll binpow(ll a, ll b) {",
					"\ta = a % MOD;",
					"\tll res = 1;",
					"\twhile (b > 0) {",
					"\t\tif (b & 1)",
					"\t\t\tres = (res * a) % MOD;",
					"\t\ta = (a * a) % MOD;",
					"\t\tb >>= 1;",
					"\t}",
					"\treturn res;",
					"}",
				}),
			}),
		})
	end,
}
