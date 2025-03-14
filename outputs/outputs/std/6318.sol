pragma solidity ^0.8.0;
contract ModNew {
    function getValue(uint256 index) public pure returns (uint256, uint256 storage, uint256) {
        return (2, 0, 17);
    }
}
