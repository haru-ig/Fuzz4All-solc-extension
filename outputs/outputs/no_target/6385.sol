pragma solidity ^0.8.0;
contract alternativeC{
  function d(address t) public returns (uint256) {
    uint a_as_unsigned = t % 2;
    uint256 res;
    if( a_as_unsigned > 1) {
      res = uint256(2) % 2;
    } else {
      res = uint256(1);
    }
    return res;
  }
}










contract test_sol_mod_alternative {
    function a(address m, address a) public {
        uint b = alternativeC(t).f(0x80);
        assert(b == 1);
        uint c = alternativeC(m).f(0x80);
        assert(c == 0);
    }
    Address public t;
}
