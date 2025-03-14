pragma solidity ^0.8.0;
contract Test26 {
    function f(uint256 x, uint256 y) public {
        uint256[] memory arrayMemoryStorage = [0];
        arrayMemoryStorage.push(uint256(x));
        arrayMemoryStorage.push(x);
        uint256[] memory arrayMemoryContract = [0];
        arrayMemoryContract.push(uint256(x));
        uint256[] public arrayStorage = [0];
        arrayStorage.push(uint256(x));
        arrayStorage.push(x);
    }
    uint256 public x;
    f(uint256 x, uint256 y) public { x = x; }
}
