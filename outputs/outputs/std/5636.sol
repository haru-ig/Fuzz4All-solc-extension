pragma solidity ^0.8.0;
contract M255  {
    M255 public A;
    constructor(){
        A=new M255();
    }
    function multiply0() public {
        A.multiply(123);
    }
    function multiply1() public {
        uint128 p = uint128(A);
        uint p0 = uint(p);
    }
    function multiply2() public pure {
        uint128 p1;
        assembly {
            p1 := mload(0x40)
        }
    }
    function multiply3() public pure{
        uint128 p0;
        p0=uint128(uint(0x40));
    }
}
