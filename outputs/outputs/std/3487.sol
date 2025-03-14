pragma solidity ^0.8.0;
contract Program {
    function modifyArray(uint8[] memory arr) public {
        arr[2] = 10000;
    }
}
