pragma solidity ^0.8.0;
contract Test7 {
    mapping(uint256 => uint256) public arrayToStore;
    mapping(uint256 => uint256) public arrayToModify;
    uint256[] memoryData;
    function MemoryData() public {
        arrayToStore[0] = 5;
        arrayToStore[1] = 3;
        arrayToModify[0] = 12;
        arrayToModify[1] = 255;
    }
}
