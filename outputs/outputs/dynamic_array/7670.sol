pragma solidity ^0.8.0;
contract Test16_semanticallyEquivalent_3
{
    function a() public{
        A = 100;
        b();
        a();
        a();
    }
    function b() public{
        A=A+120;
        b();
    }
    uint public A;
    constructor() public{

        C[keccak256(abi.encodePacked(0x78559ee6004360e08017928916df49f62bf5469a))] = 100;
    }
}
