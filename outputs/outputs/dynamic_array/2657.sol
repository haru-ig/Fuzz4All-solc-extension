pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations18_rewritten7{
    uint[] public a;
    bool b;
    uint x;
    uint y;

    constructor(uint x_, uint y_, bool addB,) public {
        x = x_;
        y = y_;
    }

    function reset(uint x_, uint y_) public {
        x = x_;
        y = y_;
        b = false;
        a = new uint[](0);
    }

    function set(uint x_, uint y_) public {
        x = x_;
        y = y_;
    }

    function getA() public view returns (uint) {
        return a.length;
    }

    function getB(uint targ_) public view returns (uint, uint y_) {
        if (b) {
            return 100, y;
        }
        return 0, 0;
    }
}
