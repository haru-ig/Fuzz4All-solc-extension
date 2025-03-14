pragma solidity ^0.8.0;
contract SolveWithSemanticModul2
{
    uint public constant test = 100;
    uint public constant test2 = 1;
    uint public constant test3 = 2;
    uint public constant test4 = 10;
    uint public constant test5 = 5;
    uint public constant test6 = 6;
    uint public constant test7 = 7;
    uint public constant test8 = 8;
    uint public constant test9 = 10000;
    uint public constant test10 = 1000;
    uint public constant test11 = 2134567890;
    uint public constant test12 = 444334234;
    uint public constant test13 = 9999999;
    uint public constant test14 = 10001000;
    uint public constant test15 = 999999999;
    uint public constant test16 = 3333;
    uint public constant test17 = 7890;
    uint public constant test18 = 0xA0A0A0A0A0;
    uint public constant test19 = 0xAAAAA0A0A0;
    uint public constant test20 = 0xBAA0A0A0A0;
    uint public constant test21 = test21;
    uint public constant test22 = test22;
    uint public constant test23 = test23;
    uint public constant test24 = test24;
    uint public constant testOutValue = test20;
    mapping(uint => uint) public mappingValue;
    uint public constant testVar1 = 100;
    uint public constant testVar2 = 98765;
    mapping(uint => uint) modifier map1 {
        mappingValue[msg.sender][testVar2] = 1;
        _;
        return testVar2;
    }
    modifier map2 {
        mappingValue[msg.sender][testVar2] = 2;
        _;
        return testVar2;
    }
