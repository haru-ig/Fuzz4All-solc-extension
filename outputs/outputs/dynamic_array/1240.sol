pragma solidity ^0.8.0;
contract ArrayUpdate {
    uint256[] public a;
    function updateArray() public {
        assembly {
            mstore8(add(a, 8), a[0])
            mstore8(add(a, 9), a[1])
        }
        a[0] = a[7];
        a[7] = a[18];
    }
}
