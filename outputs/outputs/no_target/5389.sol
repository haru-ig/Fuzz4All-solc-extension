pragma solidity ^0.8.0;
contract Mutated {
    uint[4][4] immutable x;
    function mutation() public pure {
        for (uint i = 0; i < x.length; ++i) {
          for (uint j = 0; j < x[i].length; ++j) {
            x[i][j];
          }
        }
    }
}
contract All {
    uint[2][2] immutable z;
    function mutation() public pure {
      z;
    }
}
