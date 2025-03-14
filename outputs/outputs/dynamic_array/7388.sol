pragma solidity ^0.8.0;
contract Test32 {
    uint i;
    uint[] public dynArr;
    function modifyTest() public {
        dynArr.push(i = dynArr.length + 1);
    }
}
