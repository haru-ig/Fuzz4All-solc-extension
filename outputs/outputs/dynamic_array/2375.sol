pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedAssignment_84a57b16909a9d2b63a14cd3f36e0f6e
{
    function f_0_0(uint[] calldata x) public{x}
    function non_standard_function(uint[] memory x) public{}
    function non_standard_function_2(uint[][] memory x) public{non_standard_function(x);}
    function non_standard_function_3(uint[] x) public{x;}
}
