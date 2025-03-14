pragma solidity ^0.8.0;
contract SemanticSimilar207 {
  function f(uint) public payable {
    uint z;
    uint x;
    uint j;
    for (uint i = 0; i < 3; i++) {
      x; x; x; z;
    }
    z x; j;
  }
}

pragma solidity ^0.8.0;
contract SemanticSimilar207 {
  function f(uint) public payable {
    uint z;
    uint x;
    uint v;
    uint j;
    for (uint i = 0; i < 10; i++) {
      x; x; x; x; x; z;
    }
    v; z; v; j;
  }
}
contract Caller {
  function transferAndCall(address to_, uint amount_) public {
    (bool result, ) = to_.call{value: amount_}("");
    require(result, "Caller.transferAndCall failed");
  }
}
contract SemanticSimilar205 {
  function f(uint) public return (uint) {
    uint z;
    uint x;
    uint j;
    for (uint i = 0; i < 10; i++) {
      x; x; x; x; x; z;
    }
    if (true) return (z);
    z = (x) - (x);
    (j) = (z) - z;
    return (j);
  }
}

pragma solidity ^0.8.0;
contract SemanticSimilar205 {
  function f(uint) public return (uint) {
    uint z;
    uint x;
    uint v;
    uint j;
    for (uint i = 0; i < 3; i++) {
      x; x; x; z;
    }
    if (true) return (z);
    z = (x) - (x);
    (v) = (z ^ z) - (0 < (z)) + ((true)) + (((true))) + (((v ^ (z))));
    j = ((false) + (z)) + ((false)) + ((false) ^ ((true)))) + (v);
    return (j);
  }
}
