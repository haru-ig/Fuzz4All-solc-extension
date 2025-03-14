pragma solidity ^0.8.0;
contract Test68d2 {
    struct State {
        uint flagx;
        uint flag2;
        uint flag3;
    }
    uint flagx;
    uint flag2;
    uint flag3;
    uint x;
    uint y;
    uint z;
    bytes1 xx;
    bytes1 x2;
    bytes1 x3;
    function bar() public {
        x;
        y;
        z;
        State memory s;
        s.flagx;
        s.flag2;
        s.flag3;
        s.xxx;
        s.x2;
        s.x3;
    }
}
