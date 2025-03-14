pragma solidity ^0.8.0;

contract ContractA {
    uint value;

    constructor(uint value){
        this.value = value;
    }
    function setVal(uint val){
        value = val;
        uint[] memory array = new uint[](2);
        array[0] = 15;
        array[1] = 69;
        selfdestruct(array);
    }
}
