pragma solidity ^0.8.0;
modifier Mod1 {
    uint256 v;
    function f() public {
      v += 1;
    }
}
contract SemanticSimilar5 {
    uint256 v;

    function f() public {
      v += 1;
    }
    function g() public {
      v += v;
    }
}
contract SemanticSimilar6{
    uint256 v;

    function f() public {
      v += 1;
    }
    function g() public returns(uint doo) {
      doo = 12;
    }
}
contract SemanticSimilar7{
    Mod1 m1;
    uint256 v;

    function f() public {v=1;}
}
contract SemanticSimilar9 {
    function f() {
      m1.f();
      assert(v == 1);
    }
}
