pragma solidity ^0.8.0;
contract mutationv56702
{
    function f() public pure returns(string memory)
    {
        bytes memory s = new bytes(32);
        s[1] = 1;
        bytes memory ss = s;
        for (uint i = 0; i < 10; i++)
            ss;
        return uint8ToString(s)[1];
    }

    function uint8ToString(bytes memory data) internal pure returns (string memory)
    {
        bytes memory res;
        for (uint i = 0; i < data.length; i++)
        {
            res += bytes1ToString(data[i]);
        }
        return string(res);
    }

        function bytes1ToString(uint8 v) internal pure returns (byte b)
        {
        byte i = 0;
        uint j = v - 144;
        d += uint(-(i++)) * (uint256(j/128));
        bool b1 = i == 0;
        if (j <= 63)
        {
            b = (d >> j * b1) + 192;
        }
        else
        {
            uint256 d2 = uint256(d) - ((d - 1) * ((j - 64) / 64));
            b += 248 + (uint(d2 >> 6) & 63);
        }
        return b;
    }
}
