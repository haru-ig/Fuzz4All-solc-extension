pragma solidity ^0.8.0;
contract Mutant9k
{
  mapping (uint32 => uint32) vmap;

  constructor(uint32 _a)
    public
    {
        a = _a;
    }

  function f() public view returns (uint32) {

          vmap[a + 0.sub(a)] = a;
    return a + a + 5;
  }
  function g() public returns (uint32) {
    if (value < 0) {
      return 0;
    }
    return vmap[a];
  }
  function print(uint32 a) public returns (uint32) {
    bytes memory b = abi.encode(a);
    uint32 x;
    assembly {

      x := mload(add(b, 0x20))
    }
    return x;
  }
}
