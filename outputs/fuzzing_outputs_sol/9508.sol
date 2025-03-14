pragma solidity ^0.8.0;
library B {
  function modify1(address foo, uint x) internal pure {
    foo.call{value: x}('');
  }
}
pragma solidity ^0.8.0;
contract ContractWithFallback16 {
  function modify(address foo, uint x) public {
    B.modify1(foo, x);
  }
}
