pragma solidity ^0.8.0;
contract S3 {
  uint internal s3;

  function h(uint x) internal returns (uint) { return s3 = x; }
}
```





## How to use

Add this library to your project and use the S3 contract above. Be sure to define a storage variable first like the following:

```solidity
contract S3 {
  uint128 internal s;
}
```

With ABI Coder v1:
```solidity
pragma solidity ^0.8.0;
contract S3 {
  S3.h(data);
}
pragma solidity {
  abi coder16;
  contract S3Coder16 {
    S3.h(data);
  }
}
```

With ABI Coder v2:
```solidity
pragma solidity ^0.6.3;
contract S3 {
  uint128 internal s;

  function h(uint128 x) external returns (uint128) {
    return s = x;
  }
}
pragma solidity {
  uint256[uint(abi coder2)] _array;
  uint128[2] _value;

  function h(uint160[3] memory array) external {

    abi coder16;
    S3.h(<abicecoder16array>(array));

    abi coder2;
    S3.h(<abicecoder2array>(array));
  }

  function h(uint256[999][987] memory array) external {

    abi coder16;
    S3.h(<abicecoder16array>(array));

    abi coder2;
    abi coder3;
    S3.h(<abicecoder2array>(array));
  }

  function h(uint256[999][987][1337] memory array) external {

    abi coder3;
    S3.h(<abicecoder3array>(array));
  }
}
```
