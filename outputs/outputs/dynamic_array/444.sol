pragma solidity ^0.8.0;
contract test2
{
    function test3() public pure
    {

        bool[3] storage badarray;
    }
    function test6() public pure
    {

        bool[3] storage badarray = [bool(0), bool(0), bool(0)];
    }
}

pragma solidity ^0.8.0;
contract test3
{
    function test4() public pure
    {

        uint32[256] storage badarray;
    }
    function test5() public pure
    {

        uint[32] storage badarray;
    }
}
