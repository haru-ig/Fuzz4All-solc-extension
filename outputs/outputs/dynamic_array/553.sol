pragma solidity ^0.8.0;
contract test1
{
    uint256 x1;
    uint public y1;
    function test() public
    {
        uint256 y2 = 101;
        uint256 x2 = 101;
        uint256 x = 102021 * 939394;
        uint xout = x2 + 6115;
        y2 = 1;
        y1 = y1 + 222;
        x1 += 222;
        y2 = y1 + y2;
    }
}
library test1
{
    function test2() public {
        uint256 x1;
        uint public y1;
        function test3() public {
           uint256 y2 = 101;
           uint256 x2 = 101;
           uint256 x = 102021 * 939394;
           uint xout = x2 + 6115;
           y2 = 1;
           y1 = y1 + 222;
           x1 += 222;
           y2 = y1 + y2;
        }
    }
    uint256 x2;
    function test4() public {
        uint y1;
        function test5() public {
            uint256 x2 = x1 + 8;
            bool result = x2 >= 789415;
        }
    }
}

pragma solidity ^0.8.0;
contract test33
{
    function f() public
    {
        bytes memory foo = new bytes(2);
        for (uint i = 0; i < 500; ++i)
        {
            foo[i] = 0;
        }
    }
}
/* Please create a contract which takes in some input
