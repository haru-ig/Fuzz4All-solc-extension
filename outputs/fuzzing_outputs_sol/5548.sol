pragma solidity ^0.8.0;
contract fallbacksemantic_mut2
{
    function f(bytes memory a) public pure {
        return;
    }
}

pragma solidity ^0.8.0;
contract fallbacksemantic_mut3
{
    function f(bytes memory a) public pure {
        return;
    }
    function g(uint r) public pure {
        return;
    }
}
