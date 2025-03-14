pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample {
  struct MixedContacts {
      uint _x;
  }
  function main(uint64 witness) public pure returns (uint) {
    MixedContacts memory x;
    x._x=witness;
    x._x *= x._x;
    return (uint) (x._x + 3 / x._x);
  }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample {
  struct MixedContacts {
      uint _x;
  }
  mapping(uint => MixedContacts) public mappings;
  uint constant x = 1000;
  function main(uint64 witness) public pure returns (uint)  {
    MixedContacts memory mapped = mappings[x];
    mapped._x *= witness;
    mstore(0x34, mapped);
    return uint(mapping(uint => uint).mload(0x34));
  }
  function mstore(uint index, MixedContacts memory memoryM) internal pure {
    assembly {



      let startIndex := add(0x10, index)
      mstore(startIndex, memoryM)
    }
  }
}
/* The MixedContactsExample contract demonstrates:
* - What an inline assembly function is
* - Inlining a complex task using multiple functions
* - Inline assembly does not work
* - The compiler is unable to inline a task (i.e calling a function from another
function)
* - It is not possible to inline assembly expressions (i.e. a subtraction)
* - When to use inline assembly
* - Inline assembly and inline assembly in Solidity

An inline assembly function can have one argument and either only one return
value or two. This is true even if the return type is not explicitly stated.
If no argument is supplied, then the function can only have a single return
value. If two arguments are supplied, then a function with one return value
must be declared.

Inline assembly is essentially two functions with one return variable. The
first function is called the "entrypoint" and executes inline if and only if no
other function is named. When the entrypoint is
