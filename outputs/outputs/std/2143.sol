pragma solidity ^0.8.0;
contract Mutated_4_1_1 {
    function max(uint x, uint y) public pure returns (uint) {
        if(x < y) {return x;}
        else {return y;}
    }
    function get_address(address payable _a) public pure returns (address payable) {return _a;}
}
