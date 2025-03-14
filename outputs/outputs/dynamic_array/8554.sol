pragma solidity ^0.8.0;
struct MutatedStructWithNestedArrays {
    uint256[3] array1;
    uint256[3] nestedInts;
}

constructor() { }


function updateStruct1(struct StructWithNestedArrays memory s) public { }


function updateStruct() public { }


function main() public {

    struct MutatedStruct {
        uint256[3] array1;
        uint256[3] nestedInts;
    }
    MutatedStruct memory m;

    if (true) m.array1[0] = 0;

    if (false) m.array1[0] = 0;

    if (true) m.array1.length = 0;

    if (false) m.array1.length = 0;
}


/* Expected Output:
- compile: `npx solium --fix`, or if you have `solium-solc-wrapper` installed, type `Fix` followed by a space.
- output:
```
[
  "NestedCalldataArrayAbiReencodingSizeValidation.sol:4:3: C1199: StructWithNestedArrays may use dynamic memory allocation or nested dynamic arrays; use `new` to create."
  "      uint256[3] array1;      // solhint-disable-line avoid-dynamic-array"
  "      ^----------------------^"
  "        0 (internal)"
  "NestedCalldataArrayAbiReencodingSizeValidation.sol:8:3: C1199: StructWithNestedArrays may use dynamic memory allocation or nested dynamic arrays; use `new` to create."
  "      uint[2] nestedInts;       // solhint-disable-line avoid-dynamic-array"
  "      ^-----------------^"
  "       .   .    ."
