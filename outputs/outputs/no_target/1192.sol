pragma solidity ^0.8.0;
contract Revert
{
    uint256 a;
    constructor () public {
        a = 0;
    }
    function f() public {
        require(false);
    }
}
contract RatherRevert
{
    uint256 a;
    constructor (uint256 x) public {
         a = x;
    }
    function f() public {
        a = a + 1;
        fail();
    }
    function fail() public {
        revert();
    }
}
contract Revert2
{
    uint256 a;
    constructor (uint256 x) public {
         a = x;
    }
    function f() public {
        require(false);
        a = a + 1;
    }
    function fail() public {
        a = a + 1;
        revert();
    }
}
contract Revert3
{
    uint256 a;
    constructor (uint256 x) public {
         a = x;
    }
    function f() public {
        require(false);
        a = a + 1;
    }
    function fail() public {
        a = a + 1;
        revert("message", "data");
    }
}
contract Revert4
{
    uint256 a;
    constructor (uint256 x) public {
         a = x;
    }
    function f() public {
        require(false);
        a = a + 1;
    }
    function fail() public {
        a = a + 1;
        revert("message", "data", 1);
    }
}
contract Revert5
{
    uint256 a;
    constructor (uint256 x) public {
         a = x;
    }
    function f() public {
        require(false);
        a = a + 1;
    }
    function fail() public {
        a = a + 1;
        revert("message", "data", 1, 2);
    }
}
contract Revert6
{
    uint256 a;
    constructor (uint256 x) public {
         a = x;
    }
    function f() public {
        require(false);
        a = a + 1;
    }
    function fail() public {
        a = a + 1;
        revert("message", "data", "", 1);
    }
}
contract Revert7
{
    uint256 a;
    constructor (uint256 x) public {
         a = x;
    }
    function f() public {
        require(false);
        a = a + 1;
    }
    function fail() public {
        a = a +
