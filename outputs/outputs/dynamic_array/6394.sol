pragma solidity ^0.8.0;
contract c {
  function f() public {
    uint32 i;
    uint8[2] memory s;
    for (i = 0; i < s.length; i++) {
      s[i] /= 2;
      s[i] /= 2;
    }
  }
}
compileSequence.sol :0: ERROR: SyntaxError
compileSequence.sol :0: ERROR: No declaration found matching token 'uint32'.
compileSequence.sol :5: ERROR: Function 'f' declared with 'public' modifier when no modifier is required; the declaration can be moved into the 'open' modifier to avoid this limitation.
compileSequence.sol :7: ERROR: Arrays not allowed inside of modifiers to avoid problems with nested dynamic arrays.
compileSequence.sol :7: ERROR: Function should be declared 'open' and/or be explicitly annotated 'override' to make it override in inheritence hierarchies.
compileSequence.sol :12: ERROR: Invalid array size. Use a compile-time constant to enforce static sizes.
compileSequence.sol :12: ERROR: Dynamic array field 'a' cannot be'readonly'.
