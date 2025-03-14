pragma solidity ^0.8.0;
contract Test {
    function modifyTest() public {
        dynArr.push(9);
        dynArr.push(27);
    }
    uint[] dynArr;
}
