pragma solidity ^0.8.0;
contract E10
{
    function add_internal(uint a, uint b) public pure returns (uint result){
        result = a + b;
        a = a ^ b;
        b = b + a;
        result = a * b + b * result;
        b += a;
        result += result;
        result = a;
        a = a + b;
        result = result;
        return a ^ b;
    }
}
