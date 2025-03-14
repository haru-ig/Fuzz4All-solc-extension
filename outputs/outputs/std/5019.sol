pragma solidity ^0.8.0;
contract Mutated {
    uint256[] public arr;
    function add(uint256 x, uint256 y) public pure returns(uint256 result) {
        result = x + y;
    }
}
