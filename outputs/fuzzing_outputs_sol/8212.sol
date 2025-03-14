pragma solidity ^0.8.0;
contract SemanticSimilar9{
  bool f1;
  uint g1;
  uint f2;

  function f() public { f1 = true; }
  function g() public returns (uint) { f1=false; g1 = 10; f1 = true; f2 = g1 + 10; return 0; }
  function h() public { Emit2(); }
  event Emitted1();
  event Emitted2();
}

pragma solidity ^0.8.0;



Contract SemanticSimilar7 is SemanticSimilar8{
  function p() public payable {
    emit Emitted2();
  }
  event Emitted1();

  event Emitted2();
}

Contract SemanticSimilar6 is SemanticSimilar9 {
  function p() public returns (uint) {
    emit Emitted4();
    return 0;
  }
  event Emitted1();
  event Emitted2();
  event Emitted3();
}

contract SemanticSimilar5{
  struct SomeStruct {
    uint30 s;
  }
  using LibLib for LibLib.LibLib;
  function f() public {
    LibLib.LibLib.s = 20;
  }
  function g() public pure{
    LibLib.LibLib.s;
  }
  function h() public {
    emit(LibLib.LibLib.s);
  }
}

contract SemanticSimilar4 is SemanticSimilar5 {
  uint s;
  function f() public {
    LibLib.LibLib.s;
    s;
    f();
    LibLib.LibLib.s(20);
    s(10);
    s(30);
  }
  event Emitted1();
  event Emitted3();
}

contract SemanticSimilar3 is SemanticSimilar4 {
  uint public value;
  function f() public view returns (uint) {
    value;
    return value;
  }
  function g(uint r) public {
    value = r;
  }
  function h() public {
    emit Emitted2();
  }
  /** @dev Emits a transfer, the first argument is the `address` that emitted the event, the second is the `uint256` value
