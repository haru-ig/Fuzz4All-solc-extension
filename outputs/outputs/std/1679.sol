pragma solidity ^0.8.0;
interface IArray {

    function minimum(uint[] storage _arr) public pure returns (uint);

    function maximum(uint[] storage _arr) public pure returns (uint);

    function sum(uint[] storage _arr) public pure returns (uint);

    function store(uint _value, uint[] storage _arr) public;

    function remove(uint _value, uint[] storage _arr) public returns (uint[] memory);
}
