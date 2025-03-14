pragma solidity ^0.8.0;
contract Test37 {
    struct Inner {
        uint a;
    }
    struct Outer {
        uint[9] arr;
        Inner inner;
    }
    uint _arrA;
    function logOuter() public {
        emit logEvent2(_arrA[0]);
    }
}
