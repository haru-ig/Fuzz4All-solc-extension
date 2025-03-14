pragma solidity ^0.8.0;
contract MutateProgram extends MutateProgram {
    using Array for Array.UIntArray;
    using Convert for Convert.StringArray;
    uint[100] private my_array;
    function GetArraySize() public pure returns (uint){ return my_array.length; }
}
