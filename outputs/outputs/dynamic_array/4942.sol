pragma solidity ^0.8.0;
contract Test68 {
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
        State memory memory2 = s;
        s.flag;
        s.flag;
        memory2.flag;
        memory2.flag;
    }
}
