pragma solidity ^0.8.0;
contract C1 {
    bytes5 public bytes5;
    event E1(bytes3);
    function f1() public {
        bytes5 b5;
        b5="0x02";
        emit E1(b5);
    }
}
contract Caller1 is C1 {
    constructor() public {
        f1();
    }
}
