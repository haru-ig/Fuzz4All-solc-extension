pragma solidity ^0.8.0;
contract Array{
  uint[] z;
  uint function GetMax(uint[5] memory x) internal view returns (uint max) {
    max = x[2];
  }
}
```
**1) Using arrays:** The following code demonstrates the usage of arrays:
```solidity
    uint[5] x  = [4, 3, 2, 1, 8];
    uint max = array.GetMax(x);
```
Array variables have an upper bound within the type itself. This upper
bound is used to prevent overflow. For example if you allocate a byte array with
a max capacity of 16 bytes, then a 255 is possible, but a value of 256 or larger will
produce an error.

**The syntax for declaring an array is as follows:**

```solidity


    uint[] z;
```

**The syntax for creating and accessing values in an array is as follows:**

```solidity

    uint arr[3];

    uint value = arr[2];
```

**2) Constant Arrays:** Arrays can be treated like other variables.
If they were declared as constants (instead of just variables), the values of the array could not change.

```solidity

    uint[] constant A = [...];

    uint i;
    for (i = 0; i < 10; ++i) {
        A[1] = 1;
    }
```

**3) Initializing Arrays in Solidity:** It is possible to initialize an array of uninitialized
memory, for example:

```solidity
    uint[] arr;
```
After compiling, you can pass an initial memory value (which has the same size as the declared
type) to the array.

```solidity
    uint [] memory foo;
    uint[] memory bar := [10, 20, 30];
```

## Eliminative Features
- If you're a beginner, this is highly recommended. Try to minimize scope where possible. (e.g. "a,b not a,b not a,b" and use a logical variable to determine the first or last number)
- Do not use functions with too many parameters (a function should have a limited number of parameters otherwise it will be a baffling mess to use).
- Use of arrays should be avoided if possible.
- While it is possible to initialize an array with a single element, there are some cases where that is undesirable, and we do not recommend taking this up now.
