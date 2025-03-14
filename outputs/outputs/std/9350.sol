pragma solidity ^0.8.0;
contract MutatedProgram
{


    function MutatedProgram(){}

    function mutate() public
    {
        uint256 a;
        uint256 b;
        uint256 c;
        uint256 d;

        require(uint16(a) > 127, "Error");

        a /= 2;
        b ^= a;
        b *= b;
        c |= b;
        c = c / 2;
        c &= 0xfffffffffffffffe;
        d |= (c >> 9);
        d += 1;
        d = d % 2;
        d <<= a;
        c <<= 10;
        while (true)
        {
            d <<= b;
            d -= a;
            d *= b;
            d >>= 31;
            c <<= 1;
            if ((c | d | b)!= 0)
            {
                continue;
                break;
            }
        }
    }

    function setArray(address[] memory array_) public
    {
        array = array_;
    }
}
