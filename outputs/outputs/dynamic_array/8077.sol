pragma solidity ^0.8.0;
contract Mutator {
    address[] public array1;
    mapping(address => uint) public counter;
    mapping(address => uint) public counter2;
    mapping(address => uint[]) public arrays;
    mapping(address => bytes[]) public bytesArrays;
    mapping(address => bytes2[]) public bytes2Arrays;
    mapping(address => bytes3[]) public bytes3Arrays;
    function appendArray(address _to) public {
        array1.push(_to);
        array2.push(_to);
        array3[array1.length-1].push(_to);
        array3[array2.length-1].push(_to);
        array3[array3.length-1][array1.length-1].push(_to);
        counter[_to]++;
    }
    function appendArrays(address _to) public {
        arrays[_to].push(_to);
        arrays[_to].push(_to);
        arrays[_to].push(_to);
        arrays[_to].push(_to);
        arrays[_to].push(_to);
        arrays[_to].push(_to);
        arrays[_to].push(_to);
        arrays[_to].push(_to);
        arrays[_to].push(_to);
        arrays[_to].push(_to);
        arrays[_to].push(_to);
        arrays[_to].push(_to);
        arrays[_to].push(_to);
        Arrays2[_to].push(_to);
        Arrays2[_to].push(_to);
        Arrays2[_to].push(_to);
        Arrays2[_to].push(_to);
        Arrays2[_to].push(_to);
        Arrays2[_to].push(_to);
        Arrays2[_to].push(_to);
        Arrays2[_to].push(_to);
        Arrays2[_to].push(_to);
        Arrays2[_to].push(_to);
        Arrays3[_to].push(_to);
        Arrays3[_to].push(_to);
        Arrays3[_to].push(_to);
        Arrays3[_to].push(_to);
        Arrays3[_to].push(_to);
        Arrays3[_to].push(_to);
        Arrays3[_to].push(_to
