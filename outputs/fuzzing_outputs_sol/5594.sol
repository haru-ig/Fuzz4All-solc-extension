pragma solidity ^0.8.0;
contract semanticallyequivalent1
{
    function f() public pure {
        return;
    }
}

pragma solidity ^0.8.0;
contract semanticallyequivalent2
{
    function f() public payable {
        return;
    }
}
contract semanticallyequivalent3
{
    fallback() payable {
        return;
    }
}
contract semanticallyequivalent4
{
    fallback() payable {
        return;
    }
}
contract semanticallyequivalent5
{
    fallback() {
        return;
    }
}
contract semanticallyequivalent6
{
    fallback() {
        return;
    }
}
