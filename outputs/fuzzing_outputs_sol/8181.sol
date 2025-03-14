pragma solidity ^0.8.0;
contract SemanticSimilar {
  uint256 v;
  function f() public {v = 6;}
}
contract SemanticSimilar2{
  uint256 v;
  function f() public {v = 9;}
}
contract Caller {
   uint256 public v;
   function f() public view returns (uint256) {
     v = 9;
     return v;
   }
}


import "./errors.sol";
contract ErrorGen {
  uint256 v = 10;
  function f() public returns (bool) {
    if (v < 50) {
      emit vError();
      return false;
    } else {
      return true;
    }
  }
}
contract Mutant1ErrorGen {
  uint256 v = 10;
  function f2() public returns (bool) {
     if (v > 50) {
       emit vError();
       return false;
    } else {
      return true;
    }
  }
}
contract Mutant2ErrorGen {
  uint256 v = 10;
  function f2() public returns (bool) {
     if (v > 50) throw vError();
     return true;
}
contract Mutant3ErrorGen {
  uint256 v = 10;
  function f() public returns (bool) {
   if (v > 50) {
     v = 50;
     return false;
    } else {
      return true;
    }
    }
}
contract Mutant4ErrorGen {
    uint256 v = 10;
  function f3() public returns (bool) {
    if (v > 50) throw vError();
    while (true) {}
    }
}
contract Mutant22ErrorGen {
    uint256 v = 10;
    uint256 y = 22;
    function f4() public returns (bool) {
      if (y > 50) {
        while (true) {}
        v = 50;
      } else {
        return true;
      }
    }
}
