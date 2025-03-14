pragma solidity ^0.8.0;
contract Test3 {
    uint[] public dynArr;
    function modifyTest() public {
         dynArr.push(3);
         dynArr.push([4]);
    }
}
