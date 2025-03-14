pragma solidity ^0.8.0;
contract newY {
    function func() private {
        uint256[] memory arr;
        uint256 x;
        while (arr.length >= 1) {
            x = x + arr[arr.length - 1];
            arr.pop();
        }
    }
}
