pragma solidity ^0.8.0;
contract ExampleSemanticallyEquivalent {
    uint a;
    ExampleStruct9 a_;
    constructor(uint k_) {
        a = k_;
        a_ = ExampleStruct9(k_);
    }

    function getA() public view returns(uint, uint) {
        (a, a) = (a_, a_);
        (a, uint b) = (a_, a_);
        return (a, b);
    }

    function setA(uint value) public {
        a_ = ExampleStruct9(value);
    }

    function get(uint x) public view returns(uint, uint) {
        (uint y, uint z) = (x, x);
        y = x*y;
        return (y, z);
    }

    function set(uint x) public {
        uint y = x * 2;
        x += y * 2;
    }
}
