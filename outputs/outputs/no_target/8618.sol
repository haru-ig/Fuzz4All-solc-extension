pragma solidity ^0.8.0;
contract Mutated {
    function mod(uint256 x_, uint256 y_) public view returns (uint256) {
        return (y_ + x_ / (10 ** y_ % 10 ** x_ % 10));
    }
}
