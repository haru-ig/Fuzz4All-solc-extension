pragma solidity ^0.8.0;
contract EquivalentSolidity {
    function x() public pure returns (uint) {
  uint x=140;
  x = x+1;
  x = x+1;
  x = x + 17;
  x = x + 17;
  x = x + 17;
  x = x + 18;
  x = x + 17;
  x = x + 17;
  x = x + 17;
  x = x + 17;
  x = x+1;
        return x;
    }
}


pragma solidity ^0.8.0;
contract EquivalentSolidity {
    function x() public pure returns (uint[] memory a, uint8 b) {
        uint[] memory c;
        for(uint i = 0; i < 10; i++){
     b = 2;
     c = new uint[](i);
     a = c;
     b=3;
        }
        return(a, b);
    }
}
