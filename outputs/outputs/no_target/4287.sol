pragma solidity ^0.8.0;
contract O {
  function G() public pure {
  }
  function F(uint256 x) pure {
    G();
  }
}

# We generate:
pragma: experimental ABIEncoderV2
contract O {
  function G() public pure {}

  function F(uint256) public pure {}
}
```

For these changes to work, you must create and compile the following with `remix` (you *can't* use a Solidity compiler directly with `remix`). The problem here is that `remix` only knows about the compiler v0.6. The compiler can be updated to version 0.6 by making a PR in a Solidity repo or by using the `upgrade-test` script at https://solidity.readthedocs.io/en/v0.6.0/installing-solidity.html#install-from-npm `npm i solc`.

# Warning

This behavior can be controlled by setting the `ABIEncoderV2` compiler flag. Check out https://solidity.readthedocs.io/en/v0.6.0/misc-tools.html#the-abiencoderv2-flag for details and the other changes.

<a name="known"> Known Issues </a>
=============

Here are some bugs that should be fixed or worked around:

- `require(true)` fails with `invalid opcode`.
- `require(false)` doesn't fail with `invalid opcode`.
- `revert(string)` does not print the `string` in the logs.
- `require(address(this).balance > 0)` fails with `Address 0xe342070d0769af94f0466b2c2e0b0843be394fe8 is not a contract.`
- `assembly { }`.
- `@dev` block documentation is missing from the generated documentation.
- `@dev` functions in `constructor` are not emitted to the generated documentation.
- `assert(true)` doesn't fail without `invalid opcode`.
- the compiler treats arrays as structs which is inconsistent with the previous behavior (not a struct but array of struct).
- `assert(uint256(1)!= uint256(2))` does not fail.
- `assert(address(this).balance > 0)` does not fail with `Address 0xe342070d0769af94f0466b2c2e0b0843be394fe8 is not a contract.`.
- `assert(msg.data!= '')` does not fail without `invalid opcode`.
- no warning for use of `fallback`.
- `contract O {}` fails with `cannot call a contract from its code`.
- `fallback()` is not emitted by the compiler. You can work around this by overriding the function.
- no warning for use of `@constant`.

# License

The MIT License (MIT)
