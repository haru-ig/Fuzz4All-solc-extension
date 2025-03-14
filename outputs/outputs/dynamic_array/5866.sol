pragma solidity ^0.8.0;
contract Test0704C{
    uint x;
    function set(uint number) public {
        x = number;
    }
    function get() public view returns (uint) {return x;}
    function mod(uint constant num) public {
    uint i=x;
    while(i<num) {i++;    i--;  }
    }
}
