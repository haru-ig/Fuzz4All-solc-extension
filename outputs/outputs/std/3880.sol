pragma solidity ^0.8.0;
interface IArray{
    function set(uint _index, uint _value) external;
    function get(uint _index) external returns (uint);
    function length() external returns (uint);
}
contract ArrayTest{
    IArray array;
    constructor(IArray memory _array){
        array = _array;
    }
}
