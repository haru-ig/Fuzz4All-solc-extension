pragma solidity ^0.8.0;
contract Mutator {
    uint256 internal c;
    uint256 internal d;
    uint256 internal internala;
    constructor() {
        c = 7;
        d = 8;
        internala = 0;
    }
    function decrement() public {
        c = c - 1;
        if (c <= 0) {
            c = 7;
        }
    }
    function get() public view returns (uint256) {
        return c;
    }

    function getInternal() public view returns (uint256) {
        return internala;
    }
    function test() public returns (uint256)
    {
        uint256 internaltesttest = c;
        return internaltesttest;
    }

    function testMutator() public returns (uint256)
    {
        uint256 internaltesttest = c;
        d = 8;
        c = 7;
        return internaltesttest;
    }

    function testMutator2() public returns (uint256)
    {
        uint256 internaltesttest = c;
        d = 8;
        d = 8;
        c = 7;
        return internaltesttest;
    }

    function testMutator3() public returns (uint256)
    {
        uint256 internaltesttest = c;
        b = 7;
        c = 7;
        return internaltesttest;
    }

    function testMutator4() public returns (uint256)
    {
        uint256 internaltesttest = c
