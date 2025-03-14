pragma solidity ^0.8.0;
contract C {
    uint length2;
    uint length3;
    constructor() public {
        length2 = 5;
        length3 = 6;
    }
    receive() payable external {
    }
    function f() public {
        uint length1 = length2;
        delete data3;
        length3++;
        length2 = 6;
    }
}
