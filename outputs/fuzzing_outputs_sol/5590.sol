pragma solidity ^0.8.0;
contract semanticallyconforming_gen0 {
    function f(address) public pure {
        return;
    }
}
contract semanticallyconforming_gen1 {
    function f(uint) public pure {}
}
contract semanticallyconforming_gen2 {
    function f(uint a, uint b) public pure {}
}

contract SemanticallyConforming_Callers
{
    semanticallyequivalent_gen0 testInstance;
    semanticallyequivalent_gen1 testInstance_uint;
    semanticallyequivalent_gen2 testInstance_uint_uint;
    semanticallyconforming_gen0 testOtherInstance;
    semanticallyconforming_gen1 testOtherInstance_uint;
    semanticallyconforming_gen2 testOtherInstance_uint_uint;

    function createInstanceandCall()
    public
    returns(uint){
        return Fallback_Caller(address(testInstance)).f.value(1 ether)();
    }

    function createInstanceandCall_uint()
    public
    returns(uint){
        return Fallback_Caller(address(testInstance_uint)).f(0xa);
    }

    function createInstanceandCall_uint_uint()
    public
    returns(uint){
        return Fallback_Caller(address(testInstance_uint_uint)).f.value(0.1 ether)(19);
    }
}

contract SemanticallyConforming_LowLevelCalls
{
    uint a;

    function initialize_uint(uint val) public
    {
        a = val;
    }

    function call_uint() public
    returns(uint) {
        return address(this).call.value(0.1 ether)("");
    }

    uint storage x;

    function storage_uint() public
    returns(uint) {
        return x;
    }

    uint constant y;

    function constant_uint() public
    returns(uint) {
        return y;
    }

    uint constant a_with_constant_in_front_of_function_return_value;

    function constant_uint_front_in_front_of_function_return_value() public
    returns(uint) {
        return a_with_constant_in_front_of_function_return_value;
    }

    uint constant b_with_constant_in_front_of_function_return_value;

    function constant_
