pragma solidity ^0.8.0;
contract ArrayMut6 {
    uint256[3] a;
    uint256[3] b;

    function array() public {
        a[0] = 1;
        a[1] = 2;
        b[0] = a[0] + a[1];
        b[1] = a[0];
        b[2] = a[0] + a[1];
    }
}
