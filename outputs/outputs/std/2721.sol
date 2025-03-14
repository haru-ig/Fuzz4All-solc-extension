pragma solidity ^0.8.0;
contract Constant {
require(ONE == 1);
require(TWO == 2);
require(THREE == 3);
}
contract NonConstant {
require(nonConstant == 0);
require(nonConstant2!= 99);
require(nonConstant3 == 10);
}
