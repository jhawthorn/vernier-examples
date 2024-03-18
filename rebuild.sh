
set -euo pipefail

ruby -v

BUNDLE_GEMFILE=Gemfile-example vernier run --interval=500 --allocation-sample-rate=500 --output=bundler.json -- \
	bundle lock --lockfile=/dev/null --update

