pragma solidity ^0.8.0;
contract Test30004 {
    address private oldAdr;
    address private newAdr;
    uint256 public oldNum;
    uint256 public newNum;
    constructor (uint256 _oldNum, uint256 _newNum) public {
        emit Log();
        oldNum = _oldNum;
        newNum = _newNum;
    }
    fallback () external {
        emit Log();
    }
    event Log ();
}
contract Test30005 {
    bytes32 public aHash;
    bytes32 public bHash;
    uint256 public aNum;
    uint256 public bNum;
    constructor (uint256 _a, uint256 _b) public {
        emit Log();
        aHash = keccak256(abi.encodePacked(_a));
        bHash = keccak256(abi.encodePacked(_b));
        aNum = _
