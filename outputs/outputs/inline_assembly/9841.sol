pragma solidity ^0.8.0;
contract SemanticsMissingXulMutantContract {
    constructor () {
    }
    function g() public {
        for (uint i; i < 3; ++i) {
          uint x;
          uint y;
          uint z;
          x = a();
          y = 1;
          {
            uint w;
          }
          {
            uint w;
          }
        }
        c();
    }
    function a() pure external returns (uint) {
        return 1;
    }
    function c() public pure {
    }
}
