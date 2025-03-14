pragma solidity ^0.8.0;
contract Array {
    uint[] memory inArray;
    function findMin() public view returns (uint) {
        uint[] memory addressOfArray = new uint[](inArray.length);
        for(uint i = 0; i < inArray.length; i++) {
            addressOfArray[i] = uint(uint(uint(uint(inArray[i]))));
        }

        return uint(uint(uint(uint(uint(addressOfArray[0])))));
    }
    function set(uint addValue) public {
        uint[] memory addressOfArray = new uint[](inArray.length);
        for(uint i = 0; i < inArray.length; i++) {
            addressOfArray[i] = uint
