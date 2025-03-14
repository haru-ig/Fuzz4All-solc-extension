pragma solidity ^0.8.0;
contract Square {

}
```
```no-check
pragma solidity ^0.6.7;

contract Example {
  struct MyStruct {
    uint[3] array1;
    string[3] array2;
    mapping(uint => string) mapping3;
    bytes[3] array4;
  }

  function test1() public pure {
    MyStruct memory s;
    uint[3] memory a = [3, 4, 5];
    uint[3] memory aa = [3, 4, 5];
    uint[3] memory b;

    a[1] = 2;
    a[1] = a[0] + a[2];
    aa[1] = 2;
    aa[1] = aa[2] + aa[0];
    a[1] = Convert.intFromBytes(Convert.intFromStr("abc"));
    b = a;
    b[1] = Convert.intFromStr("abc");
    uint[3] memory c;

    assert(a[1] == aa[1]);
    }


  function test2() public pure {
    MyStruct memory s;
    uint[3] memory a = [3, 4, 5];
    s.array1 = [a[1], a[0], a[2]];
    string[3] memory array2 = s.array2;
    delete array2[0];
    s.array2 = [a[0], a[1], a[2]];
    string[3] memory array3 = s.array2;
    array2 = a;

    a[1]++;
    b[1]++;
    b[1]++;
    a[1] += 5;
    a[1] -= 5;
    s.array1[2]++;
    a[2]++;
    a[2] -= 5;
    s.array1[2] -= 10;
    a[2] += 256;

    a[0] /= 5;
    s.array3[5] *= a[1];
    s.array4[3]++;
    s.array4[ ][] /= a[1];
```

Note that while you can perform the math operations directly through the Solidity compiler, the Solidity compiler is less efficient. Because Solidity uses a binary representation that is much faster than a decimal representation, you should use it sparingly and only in situations where you know that the arithmetic will not overflow. If you need to perform an operation that is too complex, but cannot be done directly by a Solidity compiler, use an [assembly function](https:
