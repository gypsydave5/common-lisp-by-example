# Symbols

Common Lisp is a Lisp 2. The only difference between a Lisp 1 and Lisp 2 is that Lisp 2 languages have two separate namespaces for values and functions. In Common Lisp this is managed using symbols. We can demonstrate this as follows, in the REPL:

```commonlisp
CL-USER> (inspect 42)

The object is an ATOM:
  42
```

`inspect` is a function which reports on the internal representation of the object that is passed to it. In the example above, the number `42` which is an `ATOM`.

```commonlisp
CL-USER> (inspect 'foo)

The object is a SYMBOL.
0. Name: "FOO"
1. Package: #<PACKAGE "COMMON-LISP-USER">
2. Value: "unbound"
3. Function: "unbound"
4. Plist: NIL
```

Here we `inspect` a symbol `foo` and we  can see 5 "slots". 

- `Name` which is a unique identifier for the symbol.
- `Package` which as you might expect defines a namespace in which the symbol exists.
- `Value`
- `Function`
- `Plist` is out of scope for this chapter.

We will look more deeply at `Value` and `Function`.

When we define a value "foo" we fill the `Value` slot on the symbol `foo`. For example:

```commonlisp
CL-USER> (defparameter foo "some value")

FOO

CL-USER> (inspect 'foo)

The object is a SYMBOL.
0. Name: "FOO"
1. Package: #<PACKAGE "COMMON-LISP-USER">
2. Value: "some value"
3. Function: "unbound"
4. Plist: NIL
```

The `Value` slot of `foo` now contains `"some value"`.
Similarly, declaring a function `foo` will fill the `Function` slot on `foo`

```commonlisp
CL-USER> (inspect '(a b c))

The object is a proper list of length 3.
0. 0: A
1. 1: B
2. 2: C
```

In this example, a list is passed to `inspect`. We can see that the list has a numbered slot for each item, each item has an index and also a value.

