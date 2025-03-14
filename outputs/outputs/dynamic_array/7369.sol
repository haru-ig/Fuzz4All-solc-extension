pragma solidity ^0.8.0;
contract Test2 {
    uint[] public dynArr;
    function modifyTest() public {
         dynArr.push(3);
         dynArr.push(9);
    }
}
