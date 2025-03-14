pragma solidity ^0.8.0;
contract SemanticalEquiv09
{
    address public myAddress;

    constructor()
    {
            myAddress = msg.sender;
    }

    function method()
    	view
    	public
    {
        address sender = msg.sender;
        address contractAddress = address(this);
    }
}

pragma solidity ^0.8.0;
contract SemanticalEquiv09
{
    address public myAddress;

    constructor()
    {
            myAddress = msg.sender;
    }

    function method(uint a, uint b, uint c, uint d, uint e)
    	view
    	public
    {
        if(a == 42)
        {
            sender;
            contractAddress;
            myAddress;
            msg.sender;
            msg.data;
        }

        if(a == 42)
        {
            if(c == 42)
            {
                uint.min = uint80.min;
                uint.max = uint80.max;
                bool.min = bool80.min;
                bool.max = bool80.max;

                address s = msg.sender;
            }

            if(a == 42)
            {
                uint256 s = uint256(uint64(a));
                c = 42;
                uint80 s = uint80(uint32(a));
                b = 42;
                bool80.min = false;
            }

            if(b > b)
            {
                uint32 i = -2;
            }

            if(c > b)
            {
                uint32 i = i*uint16(42)*0x101010101010101010101010101010101010101010101;
            }

            uint40 m = uint40(uint38(uint28(uint32(c)))));
            uint n = uint40(uint38(uint28.max));
            m = uint40(uint38.max);
            n = uint40.max;
            i = i*uint40(uint12(uint32(b)));

            uint32 j = 1 / 0;

            if(i < b)
            {
                uint160 f = uint160(uint32(i));
                uint160 g = 0;
                uint160 h = 1 / uint80(uint32(a));
                uint160 x = 0x7fffffffffffffff;
                g = x * 2;
            }
            uint160 h = 0x7ff0000000000000;
            bool.max = true;
            uint32 j = bytes1(uint80.max);
            uint256 j = uint2
