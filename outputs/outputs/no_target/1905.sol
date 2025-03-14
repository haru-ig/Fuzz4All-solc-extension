pragma solidity ^0.8.0;

contract Compliance {
    function complied() public pure returns (uint) {
        return UintWrapper.x();
    }
}
