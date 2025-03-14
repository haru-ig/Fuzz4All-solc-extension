pragma solidity ^0.8.0;
contract test
{
    function myArray(uint32 i) public pure returns (uint8 r)
    {
        uint8 l = 3;
        if (4 <= i && i <= 8) {
            return i;
        }
        else if (i >= 3) {
              return r;
        }
        else {
             return 0;
        }
    }
}
