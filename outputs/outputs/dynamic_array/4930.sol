pragma solidity ^0.8.0;
contract Test67b {
    struct State {
        uint flag;
    }
    uint flag;
    uint x;
    uint y;
    function foo() public {
        x=10;
        y=20;
        State memory s;
        s.flag=x;
        s.flag=y;
    }
}
