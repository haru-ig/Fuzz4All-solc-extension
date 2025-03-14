pragma solidity ^0.8.0;
contract MutateOne {
    function modifyArr(uint32[3] memory arr) public pure {
        arr[0] += 4;
    }
}
