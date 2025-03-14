pragma solidity ^0.8.0;
<fim_middle>

class ArrayTest {
    string private myString;
    uint private myNumber;
    bool private myBool;
    mapping(bytes32 => uint) public mapOfValues;

    function ArrayTest(uint myNumber, uint myBool) public {
        myString = "test";
        this.myNumber = myNumber;
        this.myBool = myBool;
    }

    function getValue() public view returns (uint, uint) {
        return (myNumber, myBool);
    }
}
