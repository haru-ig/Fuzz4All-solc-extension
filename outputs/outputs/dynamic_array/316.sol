pragma solidity ^0.8.0;
contract R4 {
    function f() public pure returns (uint256[] memory arr) {
        arr.push(0);
        uint256 a = arr[20];
    }
}
