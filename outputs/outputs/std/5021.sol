pragma solidity ^0.8.0;
import "./Mutated.sol";
contract New {
    Mutated[] arr;
    function add(uint256 x, uint256 y) public returns(uint256 result) {
        result = Mutated.add(x,y);
    }
}
