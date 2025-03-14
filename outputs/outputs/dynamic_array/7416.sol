pragma solidity ^0.8.0;
contract Test37{
    uint[3] public dynArr;

    bool boolBool;
    function setTest() public {
        dynArr[0] += 16;
        dynArr.length = 3;
        dynArr = [27, dynArr[1] + 50, 5];
        if ( dynArr.length == 4) {
            boolBool = true;
        }
    }
}
