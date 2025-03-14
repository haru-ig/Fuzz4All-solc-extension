pragma solidity ^0.8.0;
contract Test31 {
    uint[] public dynArr;
    function modifyTest() public {
        dynArr.push(10);
    }
}
