pragma solidity ^0.8.0;
contract Mutated {
    address[] arr;
    function add(uint256 x, uint256 y) public pure returns(address result) {
        if (x > 0)
            result = msg.sender;
    }
}
