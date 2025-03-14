pragma solidity ^0.8.0;
contract Array_equivalent_32 {
    function set(uint x) public pure { require(x >= 0); }
    function get() public view returns (uint a) { a = 1; }
    function mul(uint x) public view returns (uint a) { a = x; }
    function div(uint x) public view returns (uint a) { a = 1 + (x - 1) / 2; }
    function add(uint x) public view returns (uint a) { require((x + 1) == x + 2); a = x + 1; }
}
