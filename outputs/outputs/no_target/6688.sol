pragma solidity ^0.8.0;
contract Mutated12 {
    function subtract(uint x) public returns(bool) {
        return (uint256(x) > type(uint256).max);
    }
}
