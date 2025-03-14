pragma solidity ^0.8.0;
contract Solidity8To15 {
    constructor() public {
        a = 4;
        b = 2;
        maxA = 2;
    }
    function increment() public {
        a = a + 3;
        b = b + 1;
        maxA = maxA + 1;
    }
}
