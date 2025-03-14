pragma solidity ^0.8.0;
contract SemanticMutation1 {
    uint x = 5;
    uint y;

    function test(uint8 a, uint8 b)
    public
    pure
    returns (uint32)
    {
        if (5 == 10)
        {
            x = 7;
        }
        else
        {
            y = 8;
        }
        return x + b;
    }
    function test1(uint8 a, uint8 b)
    public
    pure
    returns (uint32)
    {
        y++;
        return 5 + y;
    }
    function test2(uint8 a, uint8 b)
    public
    pure
    returns (uint32)
    {
        x++ + a;
        return 10 + a * b;
    }
    function test3(uint8 a, uint8 b)
    public
    pure
    returns (uint32)
    {
        x + = a;
        return 5 + a + a;
    }
}
pragma solidity ^0.8.0;
contract SemanticMutation2 {
    uint x = 5;
    uint y;

    function test()
        public
        pure
        returns (uint32)
    {
        ++x;
        ++x;
        --x;
        --x;
        ++x;
        --x;
        return x;
    }
    function test0(uint8 a, uint8 b, uint8 c)
    public
    pure
    returns (uint32)
    {
        ++y;
        if ((a == c) & (b!= 6))
        {
            ++y;
            a++;
        }
        --y;
        b >>%= 38 %= 38;
        return 6 + y;
    }
    function test1(uint8 a, uint8 b)
    public
    pure
    returns (uint32)
    {
        ++y;
        if ((a!= b) & (6 == 5))
        {
            a++;
        }
        --y;
        return 12 * a;
    }
    function test2(uint8 a, uint8 b)
    public
    pure
    returns (uint32)
    {
        x +%= 38;
        y >>%= 1;
        return b;
    }
    function test3(uint8 a)
    public
    pure
    returns (uint32)
    {
        x +%= 38;
        a +%= 1;
        return 4;
    }
    function test4(uint32)
    public
    pure
    returns (uint32)
    {
        uint32 a = 4;
        uint8 b;
        if (b = 5)
        {
            a++;
        }
        return a;
    }
    function test5(uint32)
    public
    pure
    returns (uint
