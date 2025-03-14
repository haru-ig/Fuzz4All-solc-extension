pragma solidity ^0.8.0;
contract K {

    address public a;
    constructor(address _a) public {
        a = _a;
    }

    function m(uint256 x) public {
        assert(a == _a());
    }
}
contract R {
  function g() public pure {
    K k;
    k.m(42);
    a;
  }
}
