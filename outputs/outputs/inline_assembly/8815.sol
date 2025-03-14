pragma solidity ^0.8.0;
contract Test {
    uint i;
    uint constant int_max = 2**256 - 1;
    uint constant max_int = 0x6A03271B9000000000000000000000000000000000000000000000000000000000;
    i = max_int + int_max + 1;
}
```

In the above code, uint is one of the built-in types but in inline assembly, one has to specify which type to use. (Note: uint is not supported as a type of ineprments, there must be a number of 24 bytes for the internal representation).

There are two functions, one that returns uint and one that will be modifying the state. The two changes are being done at the same time to i.

Now let's create a smart contract.

```mermaid
graph LR
  start[start] -->  a[a];
a --> b[b];
  b --> c[c];
c -->  end[end];
```

Let's implement two of the steps in the above diagram using inline Assembly:

```mermaid
graph LR
  start[start] -->  a[a];
a --> b[b];
  b --> c[c];
c -->  end[end];
```
```solidity
pragma solidity ^0.8.0;
contract Test {
    uint constant int_max = 2**256 - 1;
    uint i;
    bool constant bool_max = true;
    bool constant bool_min = false;
    uint8 constant uint8_max = uint8(2 ** 8 - 1);
    uint16 constant uint16_max = uint16(2 ** 16 - 1);
    uint24 constant uint24_max = uint24(2 ** 24 - 1);
    uint32 constant uint32_max = uint32(2 ** 32 - 1);
    uint50 constant uint50_max = uint50(2 ** 50 - 1);
    uint51 constant uint51_max = uint51(2 ** 51 - 1);
    uint52 constant uint52_max = uint52(2 ** 5
