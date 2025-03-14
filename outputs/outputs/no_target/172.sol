pragma solidity ^0.8.0;
contract Test {
    uint public k = 3;
    function set(uint x) public { k = x; }
    function get() public view returns (uint) { return k<0? 6 : 12; }
}
contract Test {
    uint public k = 3;
    function set(uint x) public { k = x; }
    function get() public view returns (uint) { return k>0? 0 : 12; }
}
