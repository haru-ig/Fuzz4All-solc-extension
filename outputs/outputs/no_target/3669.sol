pragma solidity ^0.8.0;
contract G {
    uint private constant value = 1;
    bool public b = true;
    uint constant constantMax = uint160(2**128 - 1) - 1;
}
contract H {
    uint private constant value = 1;
    uint constant constantMax = uint160(2**128) - 1;
    uint256 constant maxUint = uint160(2**128 - 1);
}
