pragma solidity ^0.8.0;
contract C {
    address payable payableConstant max = payable (0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF);
    bytes32 public constant x = '0x44';
    address payable constant a = address payable(address(max));
    uintConstant x = uintConstant (max, 10, 'iota');
    uintConstant x = uintConstant (max, -10, 'iota');
}
