pragma solidity ^0.8.0;
contract Version3
{
    function doIt(uint x) public pure returns (uint y) {
        uint t;
        if (x >= 639)
            x = z;
        t = x / w;
        y = t;
        if (t == 61)
            x *= 2;
    }
}

pragma solidity ^0.8.0;
contract Version2
{
    function doIt(uint x) public pure returns (uint y) {
        uint t;
        if (x >= 639)
            x = z;
        t = x / w;
        y = t;
    }
}

pragma solidity ^0.8.0;
contract Version1
{
    function doIt(uint x) public pure returns (uint y) {
        uint t;
        if (x >= 639)
            x = z;
        t = t + x - 2;
        y = t;
    }
}
