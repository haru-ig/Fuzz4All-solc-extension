pragma solidity ^0.8.0;
contract B is A {
    uint constant _uint64 = 42 * (2**255);
    uint constant _uint32 = 42 * (2**248);
    uint private _a = 1;
    function mutated(uint) public pure returns (uint) {
      return ((_a)? _a : (a > 5)? a : 5) * (2**255);
    }
    function A() public pure {
      a = _uint64 / _uint32;
    }
    uint get a() public view returns (uint) {
      return _a;
    }
}
```
</details>
