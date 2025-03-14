pragma solidity ^0.8.0;
contract E9
{
    function add_internal (uint a, uint b) public pure returns (uint result){
        a = a ^ b;
        result = a;
    }
}
