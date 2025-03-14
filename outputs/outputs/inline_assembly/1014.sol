pragma solidity ^0.8.0;
contract SimpleStorage {
mapping(address => uint) private _memoryAddress;

constructor() {
    updateVar("memoryAddress", 33744);
 }
}
