.PHONY: report

all: bundles/import-all.js bundles/import-default.js bundles/import-separate.js bundles/require-default.js bundles/require-dynamic.js bundles/require-separate.js report

bundles/import-all.js: variants/import-all.js
	NODE_ENV=production node_modules/.bin/webpack --mode=production variants/import-all.js -o bundles/import-all.js

bundles/import-default.js: variants/import-default.js
	NODE_ENV=production node_modules/.bin/webpack --mode=production variants/import-default.js -o bundles/import-default.js

bundles/import-separate.js: variants/import-separate.js
	NODE_ENV=production node_modules/.bin/webpack --mode=production variants/import-separate.js -o bundles/import-separate.js

bundles/require-default.js: variants/require-default.js
	NODE_ENV=production node_modules/.bin/webpack --mode=production variants/require-default.js -o bundles/require-default.js

bundles/require-dynamic.js: variants/require-dynamic.js
	NODE_ENV=production node_modules/.bin/webpack --mode=production variants/require-dynamic.js -o bundles/require-dynamic.js

bundles/require-separate.js: variants/require-separate.js
	NODE_ENV=production node_modules/.bin/webpack --mode=production variants/require-separate.js -o bundles/require-separate.js

report:
	ls -lShr ./bundles