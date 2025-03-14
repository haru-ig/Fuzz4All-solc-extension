pragma solidity ^0.8.0;
contract Test290b {
    struct State {
        uint flag;
    }
    uint flag;
    uint x;
    uint y;
    State memory s;
    function foo() public {
        s.flag=x;
        s.flag=y;
        s.flag=flag;
    }
}
