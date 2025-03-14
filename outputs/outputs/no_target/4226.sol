pragma solidity ^0.8.0;
contract P12 {
  function i(uint y) pure public returns (uint) {
    uint x = 1;
    x = 0x3fff000000000001;
    return x / y;
  }
}

pragma solidity ^0.8.0;
contract P12 {
  function i(uint x) pure public returns (uint) {
    return x;
  }
}


pragma solidity ^0.8.0;
contract P12 {
  function i(uint x) pure public returns (uint) {
    uint z;
    x = 1;

    x = uint128(1);
    (z, ) = x.div(x);
    return 0x1000000 - 0x100 * z;
  }
}
