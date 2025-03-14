pragma solidity ^0.8.0;
contract Test {
    uint[] public dynArr;
    function modifyTest() public {
         for(uint i = 0; i < dynArr.length; i++){
            dynArr[i] = 3;
         }
         dynArr.push(9);
    }
}
