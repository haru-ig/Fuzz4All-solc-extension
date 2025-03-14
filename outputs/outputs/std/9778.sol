pragma solidity ^0.8.0;
contract Sqrt {
    function sqrt(uint256 x) public pure returns (uint) {
        return uint(sqrt(uint256(x)));
    }
}
