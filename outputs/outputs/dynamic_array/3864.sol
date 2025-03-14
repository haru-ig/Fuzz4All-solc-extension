pragma solidity ^0.8.0;

contract C {
    mapping(uint[] => uint) map;
    uint[] arr;
    constructor () public {
        map["0"] = 0;
        map["1"] = 1;
        arr.push(0);
        arr.push(1);
    }
}
contract C {
    mapping(uint[] => uint) map;
    uint[] arr;
    constructor () public {
        map["0"].x =0;
        map["1"].x = 1;
        arr.push(0);
        arr.push(1);
    }
}
