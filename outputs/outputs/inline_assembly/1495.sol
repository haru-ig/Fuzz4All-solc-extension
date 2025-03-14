pragma solidity ^0.8.0;
contract Mutant13n6{
  using Mutant12n6 for Mutant12n6.Get;
  function get() public pure returns (uint256, uint256, uint256) {
    Mutant12n6.Get memory m;
    (uint256 b,_,uint256 c) = m.get();
    return (b,b,c);
  }
}

pragma solidity ^0.8.0;
contract Mutant14n6{
  using Mutant13n6 for Mutant13n6.Get;
  function get() public pure returns (uint256, uint256, uint256) {
    Mutant13n6.Get memory m;
    (uint256 b,_,uint256 c) = m.get();
    return (b,b,c);
  }
}
