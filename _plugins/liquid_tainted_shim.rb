# -----------------------------------------------------------------------------
# Local-dev-only shim for `bundle exec jekyll serve` on Ruby 3.2+.
#
# The `github-pages` gem pins `liquid` to 4.0.3, which calls `String#tainted?`.
# Ruby 3.2 removed `tainted?` entirely, so `jekyll build` crashes locally on
# any recent Ruby with:
#
#     Liquid Exception: undefined method `tainted?' for an instance of String
#
# GitHub Pages' build environment patches this before liquid runs; local
# installs don't. This file adds a no-op `tainted?` to String so the theme
# renders locally.
#
# WHY IT'S SAFE TO COMMIT:
#   GitHub Pages runs Jekyll in `--safe` mode, which SKIPS everything in
#   `_plugins/`. So this file is only ever executed by your local dev server
#   and has zero effect on the deployed site.
#
# You can delete this file if you upgrade to a Jekyll setup that ships a
# newer `liquid` (>= 5.x), which no longer touches `tainted?`.
# -----------------------------------------------------------------------------

# Ruby <3.2 defined the full taint API on Object (universal). Ruby 3.2 removed
# it entirely. liquid 4.0.3 still calls `tainted?`, `taint`, and `untaint`,
# so patch each as a no-op if missing.
class Object
  def tainted?; false; end   unless method_defined?(:tainted?)
  def taint;    self;  end   unless method_defined?(:taint)
  def untaint;  self;  end   unless method_defined?(:untaint)
  def trust;    self;  end   unless method_defined?(:trust)
  def untrust;  self;  end   unless method_defined?(:untrust)
  def untrusted?; false; end unless method_defined?(:untrusted?)
end
