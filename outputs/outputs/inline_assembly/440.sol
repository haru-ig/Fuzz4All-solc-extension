pragma solidity ^0.8.0;
contract SemanticallyEquivalentM8 {
    uint216 myVar;
    constructor () public {
        myVar = 1;
        emit Log(myVar,"", "");
    }
    event Log(uint216 value1, string value2, string value3);

    function CallLog() external {

        myVar += myVar + myVar + myVar;
        emit Log(myVar,"callLog","");
    }
}
