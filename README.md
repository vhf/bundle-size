# bundle-size

Compare bundle sizes of `import` vs `require`.

As we all know by now, one of the reasons ES Modules (`import/export`) were introduced in 2015 is to make it possible to reduce bundle size by doing tree shaking.

CommonJS (`require/module.exports`) was making it impossible to do properly because [what is exported can change at runtime](https://exploringjs.com/es6/ch_modules.html#static-module-structure).

|   |   |
|---|---|
| `   1.2K import-separate.js` | `import { first, join, last } from 'lodash-es'` |
| `   1.2K import-all.js` | `import * as lodash from 'lodash-es'` |
| `   1.3K require-separate.js` | `const first = require('lodash/first');` `const join = require('lodash/join');` `const last = require('lodash/last')` |
| `    72K require-default.js` | `const lodash = require('lodash')` |
| `    86K import-default.js` | `import lodash from 'lodash-es'` |
| `   349K require-dynamic.js` | `lodash[func] = require('lodash/' + func)` |

## Usage

`npm install` then `make`.

You'll see bundle sizes in `./bundles`
