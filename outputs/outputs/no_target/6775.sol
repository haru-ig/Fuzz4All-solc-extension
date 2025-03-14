pragma solidity ^0.8.0;
contract TestMutated5 {
    function add(uint x, uint y) public pure returns (uint) {
        return add(uint(_x) + _x + (_y + uint256((uint(_x)) & uint(-1)))) - y - add(_x, uint(-y));
    }
}
