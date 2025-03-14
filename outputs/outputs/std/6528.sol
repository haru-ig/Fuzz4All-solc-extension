pragma solidity ^0.8.0;
contract Mutate3 {
    uint256 public immutable x = 1;
    uint256 public immutable y = 1;
    uint256 public immutable z = 1;
    function setMemoryAddress() public {
        uint8[] memory newArr = new uint8[](1);
        uint8[] memory arr = new uint8[](0);
        strArr[0] = "foo";
    }
    function getMemoryAddress() public view returns (uint8[] memory) {
        return memoryAddress;
    }
    uint8[] public memoryAddress = new uint8[](0);
    string public strArr;
}
