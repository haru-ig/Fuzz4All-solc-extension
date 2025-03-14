pragma solidity ^0.8.0;
contract Mutated9 {
    function add(uint x) internal pure returns (uint) {
        uint _y = add(x) + 10;
        return _y;
    }
}
