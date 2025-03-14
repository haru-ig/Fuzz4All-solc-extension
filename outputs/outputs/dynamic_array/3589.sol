pragma solidity ^0.8.0;
contract C {
    constructor() public
    {
      for (uint256 i = 0; i < 2; i++) {
        C[i] c();
      }
    }
    function c() public {
        for (uint256 i = 0; i < 3; i++) {
          _b[i] = B.G;
        }
    }
  }



pragma solidity ^0.8.0;
contract C {
    B[3] public _b;
    function b() public {
        _b[0] = B.G;
    }
}
