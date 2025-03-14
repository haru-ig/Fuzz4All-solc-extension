pragma solidity ^0.8.0;
contract Mutating
{
    function modifyString() public returns(string) {
        return "0123456789";
    }
    function modifyString2(string memory value) public returns(string memory) {
        return modifyString() == "0123456789"? value : "0";
    }
    function modifyArray() public returns(uint256[] memory) {
        return new uint256[](3);
    }
    function modifyArray2(uint256[] memory list) public returns(uint256[] memory) {
        list[2] = value.value;
        arrayReturn.push(value + 1);
        return list;
    }
    function modifyArray3(uint256[] memory list) public returns(uint256[] memory) {
        return list;
    }
}
