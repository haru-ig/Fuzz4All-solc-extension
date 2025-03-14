pragma solidity ^0.8.0;
contract R5 {
    uint256[] arr;
    function f() public {
        arr = new uint256[](1);
        arr[0] = 0;
        uint256[] memory b = arr;
    }
}
