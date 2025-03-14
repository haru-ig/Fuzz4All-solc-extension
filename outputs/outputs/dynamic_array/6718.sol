pragma solidity ^0.8.0;
contract T10FC_call_data_array_mut {
    uint public val = 0;
    uint[16] public empty1;
    uint[16] public empty2;
    function foo() public {
        empty1.push(0);
    }
}
