pragma solidity ^0.8.0;
contract Contract {
    uint public s = 0;
    mapping(address => uint8) public s8;
    mapping(address => bytes32) public s32;
    mapping(address => bytes[]) public sbytes;
    mapping(address => bytes4[]) public sbytes4;
    mapping(address => uint8[]) public s8bytes;
    mapping(address => uint8[42]) public s8bytes42;
    mapping(address => bytes32[]) public s32bytes;
    mapping(address => bytes32[99]) public s32bytes99;
    uint8[] public s8arr;
    bytes[] public sarr;
    bytes32[] public sbarr;
    bytes4[] public sbytes4arr;
    uint8[0] private s0arr;
    address public payable s65 = address(5);
    function() external payable returns (uint16) {
        return s;
    }
    constructor() {
    }
    function s1() public {
        s1barr1();
        s1barr2();
        s1barr3();
        s1barr4();
        s1barr5();
        s1barr6();
        s1barr7();
        s1barr8();
    }
    function s1barr1() public returns (uint8, uint8) {
        return (0, 0);
    }
    function s1barr2() public pure returns (uint8, uint8) {
        return (1, 0);
    }
    function s1barr3() public returns (uint8, uint8) {
        return (0, 1);
    }
    function s1barr4() public returns (uint8, uint8) {
        return (5, 5);
    }
    function s1barr5() public returns (uint8, uint8) {
        return (1, 42);
    }
    function s1barr6() public returns (uint8, uint8) {
        return (0, 0);
    }
    function s1barr7() public returns (uint8, uint8) {
        return (0, 0);
    }
    function s1barr8() public returns (uint8, uint8) {
        return (1, 0);
    }
    function s2() public {
        s1barr1();
        s2barr1();
        s1barr2();
        s1barr3();
        s1barr4();
        s3arr1();
        s1barr5();
        s1barr6();
    }
    function s1barr1() public returns (uint8, uint8, uint8) {
        (,,)
