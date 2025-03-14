pragma solidity ^0.8.0;
contract Test66 {
    struct State {
        bool x;
    }
    uint public x;
    function foo(uint8 memory x) public {
        x[0]=64;
    }
}
