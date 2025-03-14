pragma solidity ^0.8.0;
contract E10
{
    function add () public pure returns (uint a){
        a = E9.add_internal(10, 5);
        return a;
    }
}
