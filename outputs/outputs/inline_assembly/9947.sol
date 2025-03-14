pragma solidity ^0.8.0;
contract C {
    uint256 public value;
    constructor() {
        value = 1;
    }
    function test(uint8 x) public {
        value = x ^ 4;
    }
}

pragma solidity ^0.8.0;


contract Mod2 is C {
    constructor() {
        value = 8;
    }
}
