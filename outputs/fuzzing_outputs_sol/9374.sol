pragma solidity ^0.8.0;
contract Caller {
  function func6() external {
    MutatingFallback6 mut;
    mut.mutate(1,2,3);

    contract MutatingFallback1 is MutatingFallback6 {}
    mut.mutate(1,2,3);
    contract MutatingFallback2 is MutatingFallback6 {}
    mut.mutate(1,2,3);
    uint a = 1;
    contract MutatingFallback3 is MutatingFallback6 {}
    mut.mutate(1,2,3);

    contract MutatingFallback4 is MutatingFallback6 {
      function setFallback(address _fallbackAddr) external onlyOwner {






        setFallbackAddr(_fallbackAddr);
      }
      function setFallbackAddr(address _fallbackAddr) public onlyOwner {
        fallbackAddr = _fallbackAddr;




      }
    }
    setFallbackAddr(address(0));
    uint b = fallbackAddr.call(0x10000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000002);
    assert(a!= b);
    assert(fallbackAddr == 0);
  }
}
