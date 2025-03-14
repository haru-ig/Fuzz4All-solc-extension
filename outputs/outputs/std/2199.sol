pragma solidity ^0.8.0;
contract MutatedS {
    uint foo;
    uint bar;
    uint baz;
    constructor (uint x_, uint y_) {
        x = foo;
        y = bar;
    }

    function setBaz(uint z) public {
        baz = z;
    }

    function getBaz() public view returns(uint) {
        return baz;
    }

    function multi() public pure returns(uint) {
        return foo * bar + baz;
    }

    function add(uint x) public pure returns(uint) {
        return foo + x;
    }
}
