pragma solidity ^0.8.0;
contract OldY {
    uint256 public constant x = 1;
    uint256 public constant x2 = 8;
    function z() public returns(uint256) {
        bytes memory a = "0x9d1696ef9125981b889d6107492450050073c9a587a5f87790893334d06ef705";
        address x = typeCAST(a, address);
        bytes memory y = typeCAST(x, bytes);
        bytes memory z = typeCAST(y, bytes);
        a = "0x00000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000
