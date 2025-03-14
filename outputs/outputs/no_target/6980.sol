pragma solidity ^0.8.0;
contract MutateTest0d3ae {

    mapping (address => int256) private _mapping;

    constructor () {
        _mapping["0x417f1F324e4324f558e7904016B171364F877f37"] = -1;
        _mapping["0x617F1F324e4324f558e7904016B171364F877f37"] = -2;
        _mapping["0x717F1F324e4324f558e7904016B171364F877f37"] = -3;
    }

    function f() public {
            uint256 val = _mapping[0x76321E11Dbf70D4A54a7292B129648414a1Ff5C9];
            uint256 val1 = _mapping[0x892d6d6a9d727938219ed383245099958968F7eD];
    }

    function g() public {
            int256 val;
            require(val > int256(0), "");
            val = int256(_mapping[0x10B5387eC850b548AbFdE309F931cF48099cf289]);

    }
    function h() public {
            int256 val1;
            require((int256(_mapping[0x10B5387eC850b548AbFdE309F931cF48099cf289])) >= (0x417f1f324e4324f558e7904016b171364f877f37), "");
            val1 = int256(_mapping[0x210B5387eC850b548AbFdE309F931cF48099cf289]);


    }
    function i() public {
            int256 val3;
            uint256 val4;
            require(val4 <= uint256(0x417f1f324e4324f558e7904016b171364f877f37), "");
    }



    function d(uint256 l, int256 n) public {
            int256 test = n + int256(l);
            int256
