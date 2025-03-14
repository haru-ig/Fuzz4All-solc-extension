pragma solidity ^0.8.0;
contract RB {
    uint256[] arr;
    function f() public {
        arr[1] = 0;
        uint256 a = arr[1];
    }
}

contract RP {
    uint256[] public arr;
    function f() public {
        arr[1] = 0;
        uint256 a = arr[1];
    }
}
