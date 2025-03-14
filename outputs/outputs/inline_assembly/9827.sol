pragma solidity ^0.8.0;
contract SemanticsSameXulContract {
    function b() public {
        if (true)
            c();
    }
    function c() public {
        if (true)
            d();
    }
    function d() private {
        if (true)
            e();
    }
    function e() public {
        if (true)
            d();
    }
}
```

We can run our Solidity compiler and see that `SemanticsSameXulContract` compiles to the same output as `SemanticsDifereceXulContract`.

Note that this compiles to the same result whether we use Yul or inline assembly; we are using inline assembly, and if we add some simple `if`s, then it compiles to the same output.

If we comment out the `else` condition in `c`, then the compiler gives a warning: `WARNING: Using `else` outside of a `if` block. Using `else` is a programming error.`.

However, the semantics are identical; the compiler has no problem compiling a program in Yul. We are using what I've called "undeclared function." These functions take arguments but are not declared by the compiler; rather they are not accessible to the compiler.

Similarly, even with a warning being shown, the compiler still compiles.

When the compiler does compile your smart contract with Yul, it converts it to the more common Yul language. However, a compiler does not compile a smart contract with a different, but more high-level language (Solidity) without some sort of conversion. You can see this in the third snippet below.

As mentioned previously, undeclared functions are "used" by the compiler. Therefore, they can be used anywhere in a contract. They can be declared, but must be declared in the way it will appear in Solidity. This is analogous to declaring a variable and assigning it to a constant in a computer.

```solidity
pragma solidity ^0.8.0;
contract Test {
    // This can actually be declared as a const, as it will always hold the value 112.
    uint constant X = 112;

    // But if we try to write this, a warning is given about missing parentheses.
    // This is a limitation of the Yul language; we use parentheses because that's what the compiler will do.

    uint Y;
}


function F() public {
    uint X = 16;
    uint Y = X + 1;
}
```

As you can see, a warning is given about missing parentheses (it will be solved in
