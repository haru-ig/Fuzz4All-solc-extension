pragma solidity ^0.8.0;
contract E10
{
    function add_internal (uint a, uint b) public pure returns (uint result){
        assembly {
            result := a + b
        }
    }
}
