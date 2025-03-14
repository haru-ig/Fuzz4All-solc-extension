pragma solidity ^0.8.0;
contract TestArray {
    address[14] public immutable array;
    function get(uint32 index) public view returns (uint) {
        require(index < array.length, "Out of bound!");
        return 0;
    }
}
