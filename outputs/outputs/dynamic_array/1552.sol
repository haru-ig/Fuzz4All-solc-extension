pragma solidity ^0.8.0;
contract RandomModifierContract {
    struct ModStruct {
        uint x;
        uint y;
    }
    ModStruct o;
    constructor(uint x, uint y) public {
        o.x = x;
        o.y = y;
    }
    function f() public returns(uint,bytes memory) {
        (o.x, o.y) = (o.y, o.x + 1);
        return (o.x, o.x + o.y);
    }
}
