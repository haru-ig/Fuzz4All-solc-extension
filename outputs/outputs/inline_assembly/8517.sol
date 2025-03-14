pragma solidity ^0.8.0;
contract ModifyWithSemanticModul
{
    mapping (bytes32 => uint) public mapping2;
    address public owner;
    mapping (address => uint) public mapping3;
    mapping (address => bool) public mapping4;
    mapping (address => uint256) public mapping5;
    struct Struct
    {
        bool test;
        uint256 test2;
        address test3;
        address test4;
    }
    Struct public structure;
    constructor () public {
        owner = msg.sender;
    }
    function test() public {
       uint r = mapping3[msg.sender];
       if (r == 0) {
           mapping2[msg.sender] = mapping2[msg.sender] + 1;
       } else{
           mapping3[msg.sender] = 1;
       }
    }
    function test2() public {
       mapping2[msg.sender] = mapping2[msg.sender] + 1;
    }
    function test3() public {
       mapping2[bytes32(uint256(0))] = mapping2[bytes32(uint256(0))] + 1;
       bytes32 k = 0x00;
       assembly {
       {
           k := k + 1
       }
       }
       mapping3[msg.sender] = 1;
       }
    }
    function test4() public {
       Structure memory s;
       s.test = true;
       s.test2 = 10;
       s.test3 = msg.sender;
        address x = address(s);
        mapping2[msg.sender] = mapping2[msg.sender] + 1;
        mapping2[msg.sender] = 1;
    }
    function test5() public {
       Struct memory s;
       s.test = true;
       s.test2 = 10;
       s.test3 = msg.sender;
       s.test4 = msg.sender;
       mapping2[bytes32(uint256(0))] = mapping2[bytes32(uint256(0))] + 1;
       bytes32 k = 0x00;
       assembly
