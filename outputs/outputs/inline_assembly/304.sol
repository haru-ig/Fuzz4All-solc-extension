pragma solidity ^0.8.0;
contract F0 {
    function add_internal (uint a, uint b) public pure returns (uint){
        a = a ^ b;
        return a;
    }
}
