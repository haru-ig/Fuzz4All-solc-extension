pragma solidity ^0.8.0;
contract Test{
     uint a;
     mapping(uint => uint) B;
     constructor() public {
         a = 12345678;
         B[1] = 98765432101445678;
     }
     function New(uint b) public {
        a = b;
     }
}
