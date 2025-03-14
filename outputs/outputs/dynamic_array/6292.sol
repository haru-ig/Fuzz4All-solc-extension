pragma solidity ^0.8.0;
library l {
  struct s {
    uint a;
    uint b;
  }


  struct s2 {
    uint c;
    s memory s;
  }

  function mutate( uint i, s memory _s, uint a, string memory b ) public pure returns () {
    (s memory _s2, ) = m(_i, _s, a, b);
  }
  function m(uint i, s memory _s, uint a, string memory b ) public pure returns (s memory, s2 memory _s2) {
    return (s(_i + 1), s2({}, _s, b));
  }
}
