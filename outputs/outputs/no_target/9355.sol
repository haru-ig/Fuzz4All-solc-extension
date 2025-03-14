pragma solidity ^0.8.0;
contract semanticallyEquiv
{
    uint public immutable _value = 0;
    uint public x = 0;

    function test()




    {

        uint _uint = x;
        x = uint8(uint(uint16(x) << 8));


        uint8 _uint8 = _uint16_to_uint8(uint16(uint(x) << 8));



    }

    function _uint16_to_uint8(uint16 _uint16) private pure returns (uint8) { return uint8(_uint16 >> 8); }
}
