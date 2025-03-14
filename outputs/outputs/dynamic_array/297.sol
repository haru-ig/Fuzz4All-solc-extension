pragma solidity ^0.8.0;
contract R0 {
    uint256[] arr;
    function f() public {
        arr[1] = 0;
        uint256 a = arr[1];
    }
}
