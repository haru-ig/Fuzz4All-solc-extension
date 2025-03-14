pragma solidity ^0.8.0;
contract Test67b {
    struct State {
        uint flag;
    }
    uint flag;
    uint x;
    uint y;
    function foo() public {
        x;
        y;
        State memory s;
        s.flag;
        s.flag;
    }
}
