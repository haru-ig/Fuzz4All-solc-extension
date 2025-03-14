pragma solidity ^0.8.0;
library l {
}
contract c {}
pragma solidity ^0.8.0;
library l {
  uint x;
  function modify(c self, uint value) public pure {
    require( x == 0 );
    self.x = value;
  }
}
