pragma solidity ^0.8.0;
contract ContractWithFallback8 {
  function modify(uint x) public {
    uint var1 = x;
    assert(x == var1);
    uint m;
    assembly { m := m + m }
    assert(x == m || x == var1);
    var1++;
    assert(x == var1);
  }
}
