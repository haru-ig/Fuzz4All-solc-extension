pragma solidity ^0.8.0;
contract Test35{
    uint[3] public dynArr;
    bool boolBool;
    function setTest() public {
        dynArr[0] /= 3 ;
        dynArr[1] = 2;
        dynArr.push(42);
        if ( dynArr.length == 3) {
            boolBool = true;
        }
    }
}
