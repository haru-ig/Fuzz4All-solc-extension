pragma solidity ^0.8.0;
contract Mutate0015c {
    bytes32 input;
    modifier m() throws
    {
        input = keccak256(abi.encodePacked(input));
        _;
    }
}

contract muti0015
{
    uint internal uintVal;
    string internal stringVal;
    bytes32 internal bytes32Val;

    function test01() public {
        Mutate0015b x;
        bool b0 = x.test01();
        bool b1 = x().test01();
        uint b2 = x.test01.value(uint(5))();
        uint8 b3 = x.test01();
        uint16 b4 = x.test01();
        uint32 b5 = x.test01();
        uint256 b6 = x.test01();
        uint b7 = x.test01();
        bytes32 b8 = x.test01();
        bytes32 b9 = x.test01(uint(5));
        bytes32 b10 = x.test01(uint(5));
        bytes32 b11 = x().test01(uint(5));
        bytes32 b12 = x.test01(uint(5));
        bytes32 b13 = x.test01;
        while (true){
            {
                bytes32 _b14 = x.test01;
            }
            {
                uint8 _b140 = x.test01;
            }
            {
                uint16 _b15 = x.test01;
            }
            {
                uint32 _b16 = x.test01;
            }
            {
                uint256 _b17 = x.test01;
            }
            {
                uint _b18 = x.test01;
            }
            {
                bytes32 _b190 = x.test01;
            }
            x.test01();
            x();
            x.test01();
        }
        x.test01();
        x(uint(5));
        x.test01.value(uint(5))();
        x.test01(uint(5));
        x.test01(uint(5));
        x.test01(uint(5));
        x.test01(uint(5));
        x.test01(uint(5));
        x();
        x.test01;
        x.toString();
        x.toString();
        x.toHexString();
        x.toHexString();
        if (getBalance(address(this)) > 0){
            address b01 = x;
            if (b01 == address(x)){
            }
        }
        x.test01();
        x.toString();
        x.toHexString();
        x.toHexString();
