pragma solidity ^0.8.0;

contract Yul {
    uint64 constant initIB = 1;
    function Yul() public {}
    function my_function_inline_assembly(uint64 IB, uint64 IB2){
        IB -= IB2;
        IB2 = IB2 + IB;
    }
}
