pragma solidity ^0.8.0;
contract R3 {
    uint256[] arr;
    function f() public {
        arr.push(0);
        uint256 a = arr[20];
    }
}
