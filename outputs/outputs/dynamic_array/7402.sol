pragma solidity ^0.8.0;
uint i;
uint[] public dynArr;
uint x;
function modifyTest() public {
    i = 0;
    if ( dynArr.length == 1 ) {
        dynArr.push(x);
    }
    else {
        dynArr[1] = x;
    }
}
