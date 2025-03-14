pragma solidity ^0.8.0;
contract successmutablefallback98
{
    receive(address dest, uint) payable external {}
}

pragma solidity ^0.8.0;
contract successmutablefallback99
{
    receive() payable external {}
    fallback () external payable {}
}

pragma solidity ^0.8.0;
contract successmutablefallback119
{
    address payable x1;
    function f() public {
        uint[] memory x;
        uint a = 0;
        x[a] = 1;
    }
    function g() public {
        uint[] memory x;
        uint a = 0;
        a = 2;
        x[a] = 3;
        if (0 in x) {
            x[a] = 5;
        }
    }
    function h(uint) external {
        uint[] memory x;
        uint a = 0;
        x[a] = 1;
        if (a in x) {}
        if (a in x) {}
    }
}

pragma solidity ^0.8.0;
contract successmutablefallback120
{
    uint[] a;
    uint32 x1;
    function f() public {
        uint[] memory x;
        uint a = 0;
        x[a] = 1;
        a = 2;
        x[a] = 1;
    }
    function g() public {
        uint[] memory x;
        uint a = 0;
        a = 2;
        x[a] = 1;
        if (0 in x) {}
    }
    function h() public {
        uint[] memory x;
        uint a = 0;
        a = 2;
        x[a] = 1;
        if (0 in x) {}
    }
}
