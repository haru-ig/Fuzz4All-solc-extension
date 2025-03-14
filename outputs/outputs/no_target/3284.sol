pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract modified
{
    uint x = 0;
    uint z = x;

    function f(uint a) public
    {
        for (uint i = 0; i < 100; i++)
            x = x + a;
        x = x * x;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract modified
{
    uint x = 0;
    uint z = x;

    function f(uint a) public
    {
        for (uint i = 0; i < 100; i++)
        {
            for (uint j = 0; j < 100; j++)
                x = x + a;
            x = x * x;
        }
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract modified
{
    uint x = 0;
    uint z = x;

    function f(uint a) public
    {
        if(true)
        {
            for (uint i = 0; i < 100; i++)
                x = x + a;
            x = x * x;
        }
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract modified
{
    uint x = 0;
    uint z = x;
}

contract modified1
{
    uint x = 0;
    uint z = x;

    function call_modified1() public
    {
        modified modified_test = new modified();
        modified_test.f(0x000000000000000000000000000000000000000000000000000000000000000000000);

        modified1 modified1_test = new modified1();
        modified1_test.f(0x00000000000000000000000000000000000000000000000000000000000000000000);
    }
}
contract modified2
{
    uint x = 0;
    uint z = x;

    function call_modified2() public
    {
        modified modified_test = new modified();
        modified_test.f(
