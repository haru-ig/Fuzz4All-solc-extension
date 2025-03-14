pragma solidity ^0.8.0;
contract Test34{
    uint[3] public dynArr;
    bool boolBool;
    function setTest() public {
        dynArr[0] +=  2;
        dynArr[1] +=  3;
        dynArr[2] += 4;
        if ( dynArr.length == 3) {
            boolBool = true;
        }
    }
}
