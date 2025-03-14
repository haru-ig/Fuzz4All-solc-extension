pragma solidity ^0.8.0;
contract MyContract {
    using MyLib2 for uint[];
    uint internal[] private storageArray;
    uint internal[] public readArray;
    function getStorageArray() public returns (uint[]){
        return storageArray;
    }
    function getReadArray() public pure returns (uint[]){
        return readArray;
    }
    constructor() public  {
        storageArray = [0,0,0,0,0,0, 2,2];
        readArray = [0,0,0,0,0,0, 2,2];
    }
}
