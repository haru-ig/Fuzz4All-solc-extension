pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Mutations2 {
constructor() public {}
function add(uint x, uint y) public returns (uint) { return x + y; }
function mult(uint x, uint y) public returns (uint) { return x * y; }
}
interface IMutation {
    function mutated(uint x, uint y) external;
}
interface Invariant {
    function invariant(uint x) external;
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Mutations2a {
constructor() public {}
function add(uint x, uint y) public returns (uint) { return x + y; }
function mutated(uint x, uint y) public { x = add(x, mul(x, y)); }
}
contract Mutations2b {
constructor() public {}
function mult(uint x, uint y) public returns (uint) { return x * y; }
function mutated(uint x, uint y) public { x = add(x, mul(x, y)); }
}
