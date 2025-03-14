pragma solidity ^0.8.0;
contract Test {
    function modifyTest() public {

        dynArr.push(2) ;
        dynArr.push(6) ;
        dynArr[2] += 5;
    }
    uint[] private dynArr;
}
