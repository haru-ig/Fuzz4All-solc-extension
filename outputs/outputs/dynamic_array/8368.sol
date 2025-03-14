pragma solidity ^0.8.0;
contract Solidity8To14b {
    mapping(uint256 => uint8[]) public storageArrayA;
    mapping(uint256 => uint8[]) public storageArrayB;
    mapping(uint256 => uint8[]) public memoryArrayA;

    function _store(uint x) public {
        storageArrayA[x].push(x);
        storageArrayB[x].push((uint8(1) << uint256(1)) + x);
        memoryArrayA[x].push((uint8(1) << uint256(1)) + x);
    }
}
