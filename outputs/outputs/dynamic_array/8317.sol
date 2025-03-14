pragma solidity ^0.8.0;
contract Solidity6To1 {
    struct MyStruct {
        uint private x;
    }
    MyStruct[] storage x;
    uint public a;
    uint public b;
    constructor() public {
        a = 3;
        b = 4;
    }
}
