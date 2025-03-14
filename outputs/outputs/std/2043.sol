pragma solidity ^0.8.0;
contract Array_mod_64 {
    function add(uint x, uint y) public constant returns (uint)
        {return (x+y)%(2**64);}
    function max(uint x, uint y) public constant returns(uint) {return (x>y)?x:y;}
}

contract Array_equivalent_64_V2 {
    function add(uint x, uint y) public pure returns (uint) {return ((x+y)%(2**64))*2**32;}
    function max(uint x, uint y) public pure returns (uint) {return ((x>y)?x:y)*2**32;}
}
