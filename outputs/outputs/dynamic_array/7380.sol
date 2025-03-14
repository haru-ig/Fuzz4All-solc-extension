pragma solidity ^0.8.0;
contract Test31 {
    uint[] dynArr;
    function modifyTest() public {
        dynArr[3] = 10;
        dynArr.push(10);
        dynArr[dynArr.length] = 20;
    }
}
