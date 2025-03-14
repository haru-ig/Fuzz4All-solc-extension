pragma solidity ^0.8.0;
contract Array{



    constructor(uint[] memory value)
    {
        array = value;
        array_initialized = true;
    }


    uint[] public array;
    bool array_initialized;

    function getMax(uint[] memory array) public view returns (uint);
    function getMin(uint[] memory array) public view returns (uint);
    function getSum(uint[] memory array) public view returns (uint);
    function setRange(uint value, uint idx) public;
    function setArrSize(uint size) public;
    function sort(uint[] memory array) public;
    function getArrSize() public view returns (uint);
}
