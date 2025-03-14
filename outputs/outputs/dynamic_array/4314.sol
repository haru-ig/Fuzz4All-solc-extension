pragma solidity ^0.8.0;
contract B { bytes32 _bytes; }
contract A { bytes[] _array; }

pragma solidity ^0.8.0;
contract B { struct Inner { bytes32 x; } }
contract A { struct Inner { Inner[] y; } }

compiler version 0.8.14
