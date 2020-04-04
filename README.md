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

### Some reducer exemple with formula

|Code|Description|Examples|
|---|---|---|
|[bifurcate](Project/Sources/Methods/bifurcate.4dm)|Splits values into two groups using boolean bitmap|[test_bifurcate](Project/Sources/Methods/test_bifurcate.4dm)|
|[bifurcateBy](Project/Sources/Methods/bifurcateBy.4dm)|Splits values into two groups according to a predicate formula|[test_bifurcateBy](test_bifurcateBy.4dm)|
|[countBy](Project/Sources/Methods/countBy.4dm)|Groups the elements based on the given formula and returns the count by group|[test_countBy](test_countBy.4dm)|
|[groupBy](Project/Sources/Methods/groupBy.4dm)|Groups the elements based on the given formula|[test_groupBy](test_groupBy.4dm)|
|[mostFrequent](Project/Sources/Methods/mostFrequent.4dm)|Returns the most frequent element|[test_mostFrequent](test_mostFrequent.4dm	)|
|[zipObject](Project/Sources/Methods/zipObject.4dm)|Associate collections of keys and values and return an object|[test_zipObject](test_zipObject.4dm)|

## Installing

On Unix system open a terminal in your database root folder.

### Using latest release

Download the latest release and put  it into the `Components/` folder

On unix system you could do it using this command

```bash
mkdir -p Components && curl -L https://github.com/mesopelagique/CollectionUtils/releases/latest/download/CollectionUtils.4DZ --output Components/CollectionUtils.4dz
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
