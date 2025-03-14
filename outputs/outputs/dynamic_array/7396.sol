pragma solidity ^0.8.0;
contract Test33 {
    uint i;
    uint[] public dynArr;
    function modifyTest() public {
        if ( i == 1000 ) {
            dynArr.push(2);
            return;
        }
        dynArr[0] = 0;
        i = 2;
        dynArr.push(i+1);
    }
}
