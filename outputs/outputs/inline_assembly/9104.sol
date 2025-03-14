pragma solidity ^0.8.0;
library Lib {
    function addAndSub(uint a, uint b) public pure returns (uint) {
        a = a + b - 1;
        return a;
    }
}
```

## **The Problem of Using Inline Assembly in Solidity**
**In the very early days of the internet, when programmers wanted to write in Solidity at full capability**, the only way to accomplish this was by writing programs in C language. C made use of the ``#include`` and ``#include_next`` keywords to enable it to include files as a whole, but it was too limiting.

Over time, Solidity started to mimic much of this functionality, adding new keywords to support more C style code. The following are some of the new keywords:
* ``storage`` - create a persistent location.
* ``call`` - call a defined function.
* ``delegatecall`` - call a function with another function as a parameter
* ``function`` - create a function outside of the library.
* ``fallback`` - a fallback function for other functions to trigger.

Some of the new features of Solidity were actually new features of EVM-based programming languages, e.g. Solidity, Go, AssemblyScript, and Smart Contracts. While these changes have helped developers to move faster in code development, they introduced further complexity into the programming language itself:

* **Control flow**
    * ``if``
    * ``if...else``
    * ``for``
    * ``loop``
    * ``while``

* **Storage**
    * ``storage`` statements
    * ``storage modifier`` statements
    * ``storage event`` statements

In addition to this language complexity, the performance of using inline assembly also led to a lot of limitations and was forced onto the development of Solidity itself. While Solidity is still a very powerful programming language, it can still be difficult to maintain, read and debug. So, it should be emphasized that only developers who really want to use this language can rely on it. Inline assembly is one of the most important features of programming in Solidity, yet it's hard to use as a simple method of improving the readability of the Solidity code base.
* **Performance**

    * Using function calls may lead to slower code execution (although this was a feature in C).
    * Using ``storage`` statements for storing variables may slow down the compiler significantly.

**But there is no solution to this problem. To avoid this, the Solidity team was born to eliminate all the uses of this language feature, and to start focusing on developing the best way to provide the basic functionality to a smart contract with the least complexity possible:**

```solidity

/*
uint a = AddAndSub(5, 6);
uint b =
