pragma solidity ^0.8.0;
contract B {}
contract A { uint array[10, 10] private _array; uint array[] public _nestedArray; }
contract C {}
contract D { uint array[10] private _array; uint array[] public _nestedArray; }
