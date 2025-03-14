pragma solidity ^0.8.0;

contract X {
  address payable payee;
  fallback payable public f;
  fallback public f2;
}

contract Y {
  EtherFallback payable fallback;
  receive (uint256) public pure { }
}

contract Z {
  EtherFallback public fallback;
}
