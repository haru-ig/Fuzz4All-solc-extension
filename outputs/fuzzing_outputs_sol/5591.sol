pragma solidity ^0.8.0;
contract semanticallyequivalent_old
{
    function f() public pure returns (uint) {
        return 0;
    }
}
contract semanticallyequivalent_old2
{
    function f2() public pure {
        return;
    }
}
contract semanticallyequivalent_old3
{
    function f3(uint r) public pure {
        return;
    }
}
contract semanticallyequivalent_old4
{
    function f4(bytes memory a) public pure {
        return;
    }
}
contract semanticallyequivalent_old5
{
    function f5(bytes memory) public pure {}
}
contract semanticallyequivalent_old6
{
    function f6(bytes memory) public pure {}
}
contract semanticallyequivalent_old7
{
    function f7(bytes memory) public pure {}
}
