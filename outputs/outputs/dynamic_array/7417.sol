pragma solidity ^0.8.0;
contract Test35{
    uint public dynArr;
    bool boolBool;
    constructor () public {
        dynArr +=  2;
        dynArr +=  3;
        dynArr += 4;
        if ( dynArr == 3) {
            boolBool = true;
        }
    }
}
