pragma solidity ^0.8.0;
contract Test34{
    uint i;
    uint[] public dynArr;
    bool boolBool;








    function modifyTest() public {
        dynArr[0] += 2000;
        if ( dynArr[0] == 3000 && dynArr.length == 2) {
            boolBool = true;
        }
    }
}
