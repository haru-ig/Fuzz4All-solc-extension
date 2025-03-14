pragma solidity ^0.8.0;
contract F7 {
    uint a;
    uint x = 10;
    constructor() {
        a = 2;
    }
    function mutated() public {
        x = x + 1;
        a = a/x - x + x - 2;
    }
    function change() public {
        x = 2;
    }
}
```

[

[

[

[

[

[

This contract tests the contract from the previous step. When you run this contract, you can see the contract runs using the following command:

```sh
$ remix test test/solidity/07/index.test.js
```

This contract checks that the contract behaves correctly using the following test:

```sh
$ remix test test/solidity/07/05_function_inline_assembly.js
```

> Check out your Remix account to [run tests](https:

> You can also view the contract source file [here](./07/index_source.sol).

## Resources

- [Reference](https:
- [Solidity compiler documentation on inline assembly](https:
- [Remix IDE - Inline Assembly](https:
- [JavaScript cheatsheet](https:
- [Solidity Cheatsheet](https:
