pragma solidity ^0.8.0;
contract SemanticsMissingXulMutantContract {
    uint public x;
    constructor () {
        if (x!= 50) x = 50;
    }
    function g() public {
        uint x;
        uint y;
        uint z;
        (x, y, z) = c();
        c();
    }
    function c() public pure returns(uint, uint, uint) {
        return (x, y, z);
    }
    function set_x(uint _x) public {
        if (_x!= 50) x = _x;
    }
}
