pragma solidity ^0.8.0;
contract Test35{
    uint[3] private dynArr;
    bool[2] public nonDynArr;
    function setTest() public {
        dynArr[1] +=  2;
        dynArr[1] -=  2;
        dynArr[1] *=  2;
        if ( dynArr.length == 3) {
            nonDynArr[1] = true;
        }
    }
}

pragma solidity ^0.8.0;
contract Test36 {
    uint[1] public dynArr;
    bool nonBoolBool;
    function setTest() public {
        dynArr[0] = 1;
        dynArr.push(1);
        dynArr.length--;
        dynArr[1] +=  2;
        dynArr[1] -=  2;
        dynArr[1] *=  2;
        if ( dynArr.length == 1) {
            nonBoolBool = true;
        }
     }
}
