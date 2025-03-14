pragma solidity ^0.8.0;
contract Mutate
{
        uint a;
        uint b;
        function SetInt(uint i) public pure
        {
            a = i;
        }
        function Mutate2Int (uint a, uint b) public pure returns(uint){
            return  a-b;
        }
    }
