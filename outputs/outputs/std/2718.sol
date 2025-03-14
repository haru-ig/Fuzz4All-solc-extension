pragma solidity ^0.8.0;
contract Equivalent {
   uint8 public constant ONE = 1;
   uint8 public constant ZERO = 0;
}
contract SemanticEquivalent {
   uint8 public constant EIGHT = 0;
   uint8 public constant NINE = 9;
}
contract EquivalentConstant {
   uint8 public constant ONE = 1;
}
contract EquivalentSemanticEquivalent {
   uint8 public constant ONE = 1;
}
contract ConstantConstant {
   uint8 constant constantOne = 1;
}
contract NonConstantNonConstant {
   uint8 public constant nonConstantOne = 1;
   uint8 nonConstant;
}
contract NonConstantNonConstantConstant {
   uint8 nonConstantOne = 1;
   uint8 constant constantOne = 1;
}
contract ConstantNonConstant {
   uint8 constant constantOne;
   uint8 nonConstant;
}
contract ConstantConstantConstant {
   uint8 constant constantOne;
   uint8 constant constantOne;
}
