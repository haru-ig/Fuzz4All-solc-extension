pragma solidity ^0.8.0;
contract Constant {
   mapping(uint256 => uint256) constant public a;
}
contract NonConstant {
   uint8 constant nonConstant;
}

pragma solidity ^0.8.0;
contract Constant {
   mapping(uint256 => uint256) public a;
}
contract NonConstant {
   uint8 public constant nonConstant;
}
