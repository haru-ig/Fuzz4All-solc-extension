pragma solidity ^0.8.0;
contract ContractWithFallback05 is ContractWithFallback15 {
  function modify(address foo, uint x) public {
    foo(x);
  }
}
pragma solidity ^0.8.0;
contract ContractWithFallback03 {
  function modify(address foo, uint x) public {
    uint value = 3 * x;
    (foo.value(value)(_));
  }
}
pragma solidity ^0.8.0;
