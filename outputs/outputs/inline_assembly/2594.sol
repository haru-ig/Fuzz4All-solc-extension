pragma solidity ^0.8.0;
contract C {
    uint public z = 0;
    uint public x;
    constructor() public {
        x = 3;
    }
    function test() public {
        z = 4;
    }
}
contract C2 {

    uint public x;

    constructor() public {
      x = 1;
    }
}
