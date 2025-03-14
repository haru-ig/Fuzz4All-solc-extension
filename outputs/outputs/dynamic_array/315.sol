pragma solidity ^0.8.0;
contract R3 {
    uint256[] public arr;
    function f() public {
        arr.push(0);
        uint256 a = arr[20];
    }
}
