" File              : syntax/funkrit.vim
" License           : MIT
" Author            : Oleg Kirichenko <oleg@divsense.com>
" Date              : 17.12.2018
" Last Modified Date: 30.01.2019
" Last Modified By  : Oleg Kirichenko <oleg@divsense.com>
" Vim syntax file
" Language: Funkrit
" Maintainer: Oleg Kirichenko <https://github.com/divsense>
" License: MIT
"
if exists("b:current_syntax")
    finish
endif

syn keyword funkritKeyword if else switch case default break return export import use newtype class
syn keyword funkritFunction map reduce head tail F T add addIndex adjust all allPass always and any
            \ anyPass ap aperture append apply applySpec applyTo ascend assoc assocPath binary bind
            \ both call chain clamp clone comparator complement compose concat cond converge
            \ countBy curry curryN dec defaultTo descend difference differenceWith dissoc dissocPath
            \ divide drop dropLast dropLastWhile droppeats droppeatsWith dropWhile either empty endsWith
            \ eqBy eqProps equals evolve filter find findIndex findLast findLastIndex flatten flip
            \ forEach forEachObjIndexed fromPairs groupBy groupWith gt gte has hasIn hadPath head identical
            \ identity ifElse inc indexBy indexOf init innerJoin insert insertAll intersection intersperse
            \ into invert invertObj invoker isNumber isString isObject isArray isEmpty isNil join juxt keys last lastIndexOf length
            \ lens lensIndex lensPath lensProp lift liftN lt lte map mapAccum mapAccumght mapObjIndexed
            \ match mathMod max maxBy mean median memoizeWith merge mergeAll mergeDeepLeft mergeDeepght
            \ mergeDeepWith mergeDeepWithKey mergeWith mergeWithKey min minBy modulo multiply nAry
            \ negate none not nth nthArg o objOf of omit once or over pair partial partialght partition
            \ path pathEq pathOr pathSatisfies pick pickAll pickBy pipe pipeK pipeP pluck prepend
            \ product project prop propEq propIs propOr propSatisfies props range reduce reduceBy
            \ reduceght reduceWhile reduced reject remove repeat replace reverse scan sequence set
            \ slice sort sortBy sortWith split splitAt splitEvery splitWhen startsWith subtract sum
            \ symmetricDifference symmetricDifferenceWith tail take takeLast takeLastWhile takeWhile
            \ tap test times toLower toPairs toPairsIn toString toUpper transduce transpose traverse
            \ trim tryCatch type unapply unary uncurryN unfold union unionWith uniq uniqBy uniqWith
            \ unless unnest until update useWith values valuesIn view when where whereEq without xprod
            \ zip zipObj zipWit 
            \ contains

syn match funkritOperator "[/.+*?&!]"
syn match funkritDeclaration /\s*[_a-zA-Z$][a-zA-Z$_0-9]*\s*=/he=e-1
syn match funkritDeclaration /\s*[_a-zA-Z$][a-zA-Z$_0-9<,>]*\s*:=/he=e-2

syn region funkritRegexpString     start=+/[^/*]+me=e-1 skip=+\\\\\|\\/+ end=+/[gim]\{0,2\}\s*$+ end=+/[gim]\{0,2\}\s*[;.,)\]}]+me=e-1 contains=@htmlPreproc oneline

syn match funkritOperator    "[{}]"
syn match funkritOperator    "[()]"
syn match funkritOperator    "[\[\]]"
syn match funkritOperator    "=\{1,3}\|!==\|!=\|<\|>\|>=\|<="
syn match funkritOperator    "[;,]"
syn match funkritOperator    "\(&&\)\|\(||\)"

syn match funkritOperator "[$]"
syn match funkritOperator "->"
syn match funkritOperator "<-"
syn match funkritOperator ">>>"
syn match funkritOperator "!>>"
syn match funkritOperator ">>[=]"
syn match funkritOperator ">>"
syn match funkritOperator "<|>"
syn match funkritOperator "<^>"
syn match funkritOperator ">=>"
syn match funkritOperator "<[*]>"

syn match funkritNumber "-\=\<\d\+L\=\>\|0[xX][0-9a-fA-F]\+\>"

syn match funkritType "\s*\w\+\s*::.\+"
syn match funkritType "\s*\w\+<[a-zA-Z,]\+>\s*::.\+"

syn region literal matchgroup=PreProc start=/@\</ end=/\>/ oneline
syn region Text matchgroup=PreProc start="@[[]" end="[]]" oneline

syn region literal matchgroup=PreProc start=/#\</ end=/\>/ oneline
syn region Text matchgroup=PreProc start="#[[]" end="[]]" oneline

syn region literal start="'" end="'"
syn region literal start="\"" end="\""
syn region innerLiteral start="'" end="'" contained
syn region innerLiteral start="\"" end="\"" contained
syn region comment start="/[*]" end="[*]/"
syn region comment start="//" end="\n"

hi link funkritKeyword   Keyword
hi link funkritFunction  Function
hi link funkritOperator  Operator
hi link funkritNumber    Number
hi link comment      Comment
hi link literal      String
hi link innerLiteral    Comment
hi link funkritDeclaration PreProc
hi link funkritRegexpString    Type
hi link funkritType    Type

let b:current_syntax = 'funkrit'

