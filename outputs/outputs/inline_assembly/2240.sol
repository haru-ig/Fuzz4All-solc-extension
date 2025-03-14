pragma solidity ^0.8.0;
contract LegacyVersion
{
     uint d;
     constructor() { d = 97; }
     function doItWithLegacyVersion() public returns (uint) {
         if (d < 30)
             d -= 30;
        d /= 2;
        return 12 * 2 * d;
        if (d < 30)
            d -= 30;
        d *= 2;
        return 12 * 2 * d;
     }
}
