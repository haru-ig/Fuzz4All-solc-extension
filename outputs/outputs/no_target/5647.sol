pragma solidity ^0.8.0;
contract A{
    uint a = 8;
    uint8 a1 = 1;
    uint256 a32 = 2;
    uint256 a64 = 4;
    uint32 a = 8;
    function f1(uint256 _b) public  returns (uint32,uint32){
        uint32 b = _b;
        b = b-(b-30);
        (uint32,uint32) _yout;
        _yout = (0,20);
    }
}
contract B{
    uint a = 8;
    uint b = 11;
    function f9(){
        a = 8;
        b = 11;
    }
}
