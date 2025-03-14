pragma solidity ^0.8.0;
```

<br>

## Malicious code in an out of gas contract

Out of gas contracts, the `code` needs to specify the bytecode to be executed if the contract's state changes in the contract. For example, the following contracts throw a `revert()` if the `x` variable is `0`, because the state at the beginning of the function will always be `0`:

```
pragma solidity ^0.8.0;
contract A {
    uint x = 0;
    uint constant c = 0x12345;

    function f() internal pure returns (uint) {
        require(x > 0);
        if (address(this).balance == c) revert();
        if (x > 3) throw;
        return x;
    }
}
contract B {
    function g() internal pure {
        require(x == 0);
        require(x == g());
    }
}
contract C {
    function h() public pure {
        require(x>0);
        require(x <= 3);
    }
}
contract D {
    function i() public pure {
        require(x > 0);
        h();
    }
}
contract E {
    uint x;
    uint y;

    constructor() {
        require(x <= 3);
    }

    function j() public pure returns(uint) {
        require(x == 0);

        h();

        require(y == 1);

        uint x
