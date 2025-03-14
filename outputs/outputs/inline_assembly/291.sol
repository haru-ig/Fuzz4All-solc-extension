pragma solidity ^0.8.0;
contract E9
{

    function add_internal (uint a, uint b) internal pure{
        a = a ^ b;
    }

    function div_internal (uint a, uint b) internal pure{
        a = a / b;
    }


}
