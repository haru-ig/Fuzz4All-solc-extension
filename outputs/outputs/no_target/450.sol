pragma solidity ^0.8.0;
struct UnusualSemantic {
    bool y;
    bool y_;
    bool z;
    uint256 x_;
    uint16 y_;
}
contract Hello {
    function f1() public pure {
        Semantic s;
    }
    function f2() public pure {
        UnusualSemantic s;
    }
}
