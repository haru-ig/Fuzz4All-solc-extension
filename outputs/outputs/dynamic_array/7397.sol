pragma solidity ^0.8.0;
contract Test33 {
    uint[] public dynArr;
    uint i;
    function modifyTest() public {
        if ( i == 1000 ) {
            dynArr.push(i + 1);
        }
        else {
            dynArr[1] = i+1;
        }
    }
}
contract Test33 {
    uint i;
    uint[] public dynArr;
    function modifyTest() public {
        if ( i == 1000 ) {
            dynArr[numElements] = i + 1;
            dynArr.push(dynArr.length);
        }
        else {
            dynArr[1] = i+1;
        }
    }
}
