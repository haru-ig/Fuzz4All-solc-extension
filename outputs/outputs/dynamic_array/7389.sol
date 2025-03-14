pragma solidity ^0.8.0;
contract Test32 {

     using MemoryArrays for MemoryArrays.MemoryArrayStorage;
    MemoryArrayStorage.AddressArrayStorage dynArr;
    function modifyTest() public {
        dynArr.modify();
    }
    function check() public view returns (uint) {
        return dynArr.count();
    }
}
