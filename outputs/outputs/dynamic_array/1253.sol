pragma solidity ^0.8.0;
contract UndefinedArray {
    uint256[] public a;
    function updateArray() public {
        a[0] = 2;
    }
}
