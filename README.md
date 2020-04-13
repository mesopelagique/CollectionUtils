# CollectionUtils

[![language][code-shield]][code-url]
[![language-top][code-top]][code-url]
![code-size][code-size]
[![release][release-shield]][release-url]
[![license][license-shield]][license-url]
[![discord][discord-shield]][discord-url]

Utility methods for collections.

## Usage

## collection_flatten

Flattenize a collection.

## collection_ify

Transform any input into collection. If already a collection return it.

## collection_entries

Transform any collection into a collection of entries ie. object with key and value like `OB Entries`.
Key is index, and value is the value at this index.

## collection formula

Use `Formula` with collection functions like `map`, `reduce`, etc..

|Method Name|Formula Parameters|Result|Examples|
|---|---|---|---|
|`c_formula`|$1, $2, $3, ...| $0 ie. direct formula result|[test_c_formula](Project/Sources/Methods/test_c_formula.4dm)|
|`c_formula_this`|This.value, $1, $2, ...| $0 ie. direct formula result|[test_c_formula_this](Project/Sources/Methods/test_c_formula_this.4dm)|
|`c_formula_raw`|This.value, $1, $2, ...| This.result or This.accumulator must be modifyed|[test_c_formula_raw](Project/Sources/Methods/test_c_formula_raw.4dm)|

```4d
$col:=New collection:C1472(1;2;3;4)
$result:=$col.map("c_formula";Formula:C1597($1+1))  // ++
```

### Some reducers exemple using Formula

|Code|Description|Examples|
|---|---|---|
|[bifurcate](Project/Sources/Methods/bifurcate.4dm)|Splits values into two groups using boolean bitmap|[test_bifurcate](Project/Sources/Methods/test_bifurcate.4dm)|
|[bifurcateBy](Project/Sources/Methods/bifurcateBy.4dm)|Splits values into two groups according to a predicate formula|[test_bifurcateBy](Project/Sources/Methods/test_bifurcateBy.4dm)|
|[countBy](Project/Sources/Methods/countBy.4dm)|Groups the elements based on the given formula and returns the count by group|[test_countBy](Project/Sources/Methods/test_countBy.4dm)|
|[groupBy](Project/Sources/Methods/groupBy.4dm)|Groups the elements based on the given formula|[test_groupBy](Project/Sources/Methods/test_groupBy.4dm)|
|[indexBy](Project/Sources/Methods/indexBy.4dm)|Like groupBy, but for when you know your keys are unique.|[test_indexBy](Project/Sources/Methods/test_indexBy.4dm)|
|[mostFrequent](Project/Sources/Methods/mostFrequent.4dm)|Returns the most frequent element|[test_mostFrequent](Project/Sources/Methods/test_mostFrequent.4dm	)|
|[zipObject](Project/Sources/Methods/zipObject.4dm)|Associate collections of keys and values and return an object|[test_zipObject](Project/Sources/Methods/test_zipObject.4dm)|

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

## Unit tests

Execute `allTests`, which execute all method prefixed by `test_`

[Result page](http://htmlpreview.github.io/?https://raw.githubusercontent.com/mesopelagique/CollectionUtils/webtu/WebFolder/results.html)

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
[discord-shield]: https://img.shields.io/badge/chat-discord-7289DA?logo=discord&style=flat
[discord-url]: https://discord.gg/dVTqZHr
