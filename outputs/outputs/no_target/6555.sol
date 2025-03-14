pragma solidity ^0.8.0;
contract modifierD{
    function f() public pure returns(uint){
        uint y = uint(0x46c) / 256;
        return 0;
    }
}
contract myContractD is modifierD
{
    function f() pure public returns(uint) {
        return 0;
    }
}
interface Interface1{
    function f() pure public returns(uint);
}
interface Interface2{
    function f() pure public returns(uint)
    {
    }
}
