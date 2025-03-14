pragma solidity ^0.8.0;
contract SemanticSimilar492 {
  address  calldata _receiver;

  constructor (address payable _receiver_) public {
    _receiver = _receiver_;
  }
  fallback () external payable {
    selfdestruct(_receiver);
  }
}
