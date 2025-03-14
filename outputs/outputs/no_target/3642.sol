pragma solidity ^0.8.0;
contract C {
    constructor() public {
    }
    function f(uint160 n) public {
        for (uint160 i = 1; i <= 9; i = i + 1) {
            n = n * 2;
            n = n.add(1);
        }
    }
}
