pragma solidity ^0.8.0;
contract R1 {
    uint[20] internal arr;
    function f() public {
        arr.push(0);
        uint256 a = arr[20];
    }
}
