pragma solidity ^0.8.0;
contract Semantic {
  uint256 v;
  function f() public {v = 6;}
}
contract SemanticSimilar{
  Semantic s_;
  SemanticSimilar(Semantic s) public {s_ = s;}
  function f() public {s_.f();}
}
contract Caller {

  function callSame(Semantic s) public {
    SMT_S smtS;
    smtS.x(s);
  }

  function callReceiving(SemanticSimilar ss) public payable {
    ss.x(s_);
  }

  function callSend(SemanticSimilar ss) public payable {
    ss.x(s_);
    ss.y(s_);
    ss.x(s_);
  }

  function callSameWithFallback(Semantic sim) public fallback {
    sim.x(s);
  }
}
