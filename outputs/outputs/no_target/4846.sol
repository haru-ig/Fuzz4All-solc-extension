pragma solidity ^0.8.0;
contract B { constructor() public { B.f(); }  function f() public pure returns (uint8) { return 129; } }

pragma solidity ^0.8.0;
contract C {
    uint8 constant myUint = B.f();
    require (myUint == 128);
    function f() public pure returns (uint8) { return 132; }
}
