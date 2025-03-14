pragma solidity ^0.8.0;
contract Array11_solidiarity {
    uint256[] private arrayOf1;
    bool[] private boolArray;
    bool public boolean;
    function Array11_solidiarity() {
        boolean = false;
        arrayOf1 = [10, 20, 30, 40];
        boolArray = [true, false, true, false, true, false, false, true, false];
    }
    function getArrayOf1() public constant returns (uint256[] memory) {
        return arrayOf1;
    }
    function getArrayOf2() public constant returns (bool[] memory) {
        return boolArray;
    }
    function getValue(uint256 index) public constant returns (uint256) {
        uint256 val = arrayOf1[index];
        return val;
    }
    function updateValue(uint256 index) public Mutate_array(uint256[] memory) {
        uint256 old = arrayOf1[index];
        uint256 newVal = (old * 10) + num2 + 1;
        arrayOf1[index] = newVal;
    }
    function getArrayLength() public constant returns (uint256) {
        return uint256(arrayOf1.length);
    }
    function setBoolean(uint256 index) public Mutate_array(bool[] memory) {
        boolean = boolean? false : true;
        if (index > 0)
            boolArray[0] = boolean;
        else
            boolArray.push(boolean);
    }
    function getBoolean(uint256 index) public constant returns (bool) {

        bool exists = boolean;
        return exists;
    }
}
