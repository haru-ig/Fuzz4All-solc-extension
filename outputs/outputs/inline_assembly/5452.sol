pragma solidity ^0.8.0;
contract MutateWipeBc5 {
    uint public rBc532;
    function _next() public {
        uint _rBc532 = rBc532;
        for (uint x; x < 20000; x++) {
          if (_rBc532 < 1 << 64) {
            _rBc532 += 2*x;
          } else {
            break;
          }
          uint _dummy;
        }
    }
}

```

## Lecture 5: Using `keccak256` to calculate hashes

In general you have no control over what Solidity uses for hashing, so when using inline assembly it's recommended you rely on some existing methods (such as `sha3`, which is included by default in Solidity).

In order to calculate hashes (and not use inline gas), you will need to make a couple of assumptions:
1.  The `keccak256` function exists, and takes a given input (a byte array) as input.
2.  The amount of data that will be hashed is less than the EVM's maximum call data size, which is 65,535 bytes. This means the hash size is limited to 64 bytes, or 512 bits.

In order to achieve this, you will first have to declare a constant `maxHashSize` (which you declare above or above at the top of your file so you get the same hash).  Your code will then read your data, add the magic number `0x1b2f8475`, and hash the data using `keccak256` using `0x1b2f8475 0x1b2f8475 0x1b2f8475 0x1b2f8475 0x1b2f8475 0x1b2f8475` (the bytes `0x1b2f` are part of the keccak algorithm’s magic number). Because it's an upper case letter that will be added, you will also need to calculate the `0x1b2f8475` (lowercase and uppercase are the same) in the same function, so you get `0x1B2F8475` (the bytes `0x1B2F` are part of the keccak algorithm’s magic
