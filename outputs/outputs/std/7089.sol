pragma solidity ^0.8.0;
contract BitwiseXORDA {
    uint256 a;
    function setX() public {
        a = a ^ 0xffffffffffffffff;
    }
}
