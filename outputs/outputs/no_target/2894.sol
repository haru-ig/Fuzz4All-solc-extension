pragma solidity ^0.8.0;
library Lib{
    uint[] storageData = new uint[](10);
    function set(uint i) public pure {
        storageData[i] = 1;
    }
}
contract Test{
    uint storageValue;
    uint constant Value = 2;
    constructor() public{
        this.storageValue = 1;
        set(1);
    }
    function getStorageValue() public view returns (uint){
        return this.storageValue;
    }
    function set(uint i) public{
        set(i, 2);
    }
    function set(uint i, uint j){
        assert(i + 3 == j);
        Lib.set(i);
        this.storageValue += 1;
    }
}
