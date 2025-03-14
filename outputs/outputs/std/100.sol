pragma solidity ^0.8.0;
contract Array_Array_Mul_Uint32_Contract_ {
    uint [] internal arr;

    constructor (uint v, uint u) {
        arr = new uint[](2);
        arr[0] = v;
        arr[1] = u;
    }

    function multiply() public {
        uint v = arr[0];
        uint u = arr[1];
        uint v_n = arr[0];
        for (uint i=1; i<2; i++) {
            v_n = _mul_uint(v_n, u);
        }
        arr[0] = v_n;
    }
}
/* This contract is an experiment involving Solidity's array functionality for passing unsigned integer data to functions. It compiles, runs, and provides output matching that of the array contract:

$ truffle test

 > networks     |   networkId
 > :------------|:-------------
100 | 8545
 > contracts    |      name
 > :-----------|:------------
 ArrayArrayMul |  ArrayArrayMul

Compiling...
Compiling 1 files (1.381s built in 18.885ms)
```

<p align="center">
  <h2>
    <span style="color: #0094FE;">What's Next?</span>
  </h2>
  <p align="center">
    Read the <a href="/en/29-testing">testing guide</a> to find out more. And check out the other tutorials for useful examples of solidity programs and features.
  </p>
</p>
