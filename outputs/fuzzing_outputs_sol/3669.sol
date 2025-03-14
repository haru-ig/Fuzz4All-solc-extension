pragma solidity ^0.8.0;
contract MutateSemantic6Caller5 {
    modifier canAdd(uint256 _x, uint256 _y) {
        require(false);
    }
    function mutate(uint256 _x, uint256 _y) pure public returns (uint256) {
        return _x * 1111;
    }
}
