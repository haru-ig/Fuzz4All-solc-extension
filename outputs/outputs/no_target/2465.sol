pragma solidity ^0.8.0;
contract mutationv080b {
  constructor () public {}
  function f() internal pure returns(uint256) { uint256 c; unchecked {uint256 sc = 31; } return c;}
}

function f(uint256 a1, uint256 a2) public pure returns (uint256) {
if (a1 < 545 && a1 > 65536 || a2 < 0 || a2 > type(uint256).max - a1)
    throw;
require(true);
  uint256 sc = 0;
  unchecked {
    unchecked {
    unchecked {
      unchecked { sc = 2; }
    }
    unchecked { }
    unchecked { sc = 0; }
  }
  unchecked { sc = 2; }
  unchecked { }
  unchecked {
    unchecked {
      unchecked { sc = 1; }
    }
    unchecked { sc = 0; }
  }
  unchecked { sc = 1; }
  unchecked { }
  unchecked {
    unchecked {
      unchecked { }
    }
    unchecked { sc = 0; }
  }
  unchecked {
    unchecked {
      unchecked {
        unchecked {
          unchecked { }
        }
        unchecked { sc = 0; }
      }
      unchecked { }
    }
    unchecked { sc = 1; }
  }
  unchecked { sc = 0; }
}
