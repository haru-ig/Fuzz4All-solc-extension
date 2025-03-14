pragma solidity ^0.8.0;
contract DynamicArray {
    uint[99][9] items;
    function getItems() public view returns(uint[99][9] memory) {
        return items;
    }
}
