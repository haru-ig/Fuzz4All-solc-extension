pragma solidity ^0.8.0;
contract MutatedFallback {
  function fallback() pure public returns (uint) {
    return (uint(uint256(-1)) << 31) + 0x7FFFFFFF;
  }
}



pragma solidity ^0.8.0;
contract MultiFallback {
  function a() pure public returns (uint);
  function b() pure public returns (uint);
  function c() pure public returns (uint);

  function fallback() pure public returns (uint) {
    return (a() + b() + c());
  }
}
