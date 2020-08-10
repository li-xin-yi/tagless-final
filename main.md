---
jupyter:
  jupytext:
    formats: ipynb,md
    text_representation:
      extension: .md
      format_name: markdown
      format_version: '1.2'
      jupytext_version: 1.5.1
  kernelspec:
    display_name: Haskell
    language: haskell
    name: haskell
---

#  Interpreters for first-order languages

In usual, we prefer infix expressions like

```haskell
1919 - (114 + 514)
```

However, when the *initial* embedding encodes expression as a value of algebraic data type:

```haskell
data Exp = Lit Int
    | Neg Exp
    | Add Exp Exp
```

The expression above is rewritten with such a prefix notation (sometimes also known as *Polish notation*):

```haskell
x :: Exp
x = Add (Lit 1919) (Neg (Add (Lit 114) (Lit 514)))
```

we know the evaluation should be equal to the following prefix expression in Haskell:

```haskell
(+) 1919 (negate ((+) 114 514))
```

```haskell

```
