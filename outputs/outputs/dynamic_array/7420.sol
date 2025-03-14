pragma solidity ^0.8.0;
contract Test34{
    uint[5] public dynArr;
    bool boolBool;
    function setTest() public {
        dynArr[3] +=  2;
        dynArr[3] -=  2;
        dynArr[3] *=  2;
        if ( dynArr.length == 3) {
            boolBool = true;
        }
        else if (dynArr.length == 5) {
            boolBool = true;
        }
    }
}
