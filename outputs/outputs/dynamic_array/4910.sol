pragma solidity ^0.8.0;
contract Test66 {
    struct State {
        bool x;
    }
    function foo(address[] calldata x) public {
        address[64] memory y;
        x[0]=0x14;
    }
    function bar(address[64] memory a) public {
        x[0]=0x14;
    }
}
