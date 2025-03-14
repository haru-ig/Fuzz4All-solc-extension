pragma solidity ^0.8.0;
contract SemanticalEquiv1
{
    constructor()
    {
        _makePublic("hello");
    }
    function _makePublic(string memory arg) public
    {
    }
}
pragma solidity ^0.8.0;
contract SemanticalEquiv2
{
    constructor()
    {
        _makePublic("hello");
    }
    function _makePublic(string memory arg) public
    {
    }
    function f() public
    {
        _makePublic("hello");
    }
}
pragma solidity ^0.8.0;
contract SemanticalEquiv3
{
    constructor()
    {
        _makePublic("hello");
    }
    function _makePublic(string memory arg) public
    {
    }
}
pragma solidity ^0.8.0;
contract SemanticalEquiv6
{
    constructor()
    {
        _makePublic("hello");
    }
    function f() public returns (string)
    {
        _makePublic("hello");
        return "hello";
    }
    function _makePublic(string memory arg) public
    {
    }
}
pragma solidity ^0.8.0;
contract SemanticalEquiv7
{
    function f1() public
    {
        uint public p = 2 ** 128;

        p += 1;
        p += 1;
        p += 1;
        p += 1;
    }
    function f2() public
    {
        uint internal p = 2 ** 128;

        p += 1;
        p += 1;
        p += 1;
        p += 1;
    }
    function f3() public
    {
        uint private p = 2 ** 128;

        p += 1;
        p += 1;
        p += 1;
        p += 1;
    }
}

pragma solidity ^0.8.0;
contract SemanticalEquiv4
{
    function f1() public
    {
        int r = 2 ** 128;

        r += 1;
        r += 1;
        r += 1;
        r += 1;
    }
    function f2() public
    {
        int internal r = 2 ** 128;

        r += 1;
        r += 1;
        r += 1;
        r += 1;
    }
    function f3() public
    {
        int private r = 2 ** 128;

        r += 1;
        r += 1;
        r += 1;
        r += 1;
    }
}
/* Please create a semantically equivalent program to
