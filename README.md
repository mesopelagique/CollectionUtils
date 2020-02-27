# CollectionUtils

[![language][code-shield]][code-url]
[![language-top][code-top]][code-url]
![code-size][code-size]
[![release][release-shield]][release-url]
[![license][license-shield]][license-url]

Utility methods for collections.

## Usage

## collection_flatten

Flattenize a collection.

## collection_ify

Transform any input into collection. If already a collection return it.

## collection formula

Use `Formula` with collection functions like `map`, `reduce`, etc..

- `c_formula`
- `c_formula_raw`
- `c_formula_this`

```4d
$col:=New collection:C1472(1;2;3;4)
$result:=$col.map("c_formula";Formula:C1597($1+1))  // ++
```

## Installing

On Unix system open a terminal in your database root folder.

### Using latest release

Download the latest release and put  it into the `Components/CollectionUtils.4dbase/` folder

On unix system you could do it using this command

```bash
mkdir -p Components/CollectionUtils.4dbase/ && curl -L https://github.com/mesopelagique/CollectionUtils/releases/latest/download/CollectionUtils.4DZ --output Components/CollectionUtils.4dbase/CollectionUtils.4dz
```

### Using git submodule

#### to use source code

```bash
git submodule add https://github.com/mesopelagique/CollectionUtils.git Components/CollectionUtils.4dbase
```

#### to use binary

```bash
git submodule add https://github.com/mesopelagique/CollectionUtils.git Components/CollectionUtils
```

Open the project, for instance in unix system

```bash
open Components/CollectionUtils/Project/CollectionUtils.4DProject
```

Compile it to `Components/` folder. A `CollectionUtils.4dbase` will be created with inside a `CollectionUtils.4dz`

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[code-shield]: https://img.shields.io/static/v1?label=language&message=4d&color=blue
[code-top]: https://img.shields.io/github/languages/top/mesopelagique/CollectionUtils.svg
[code-size]: https://img.shields.io/github/languages/code-size/mesopelagique/CollectionUtils.svg
[code-url]: https://developer.4d.com/
[release-shield]: https://img.shields.io/github/v/release/mesopelagique/CollectionUtils
[release-url]: https://github.com/mesopelagique/CollectionUtils/releases/latest
[license-shield]: https://img.shields.io/github/license/mesopelagique/CollectionUtils
[license-url]: LICENSE.md
