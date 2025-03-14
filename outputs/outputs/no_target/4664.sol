pragma solidity ^0.8.0;
contract D {
    uint y;
constructor(uint _y)public {
        y=_y;
}
    void g()public {
        assert(0 <= y && y < 256);
        y++;
    }
}


pragma solidity >=0.8.0;
contract P {
    function f(address _a) view public returns (uint) {
        return uint(_a);
    }
}
