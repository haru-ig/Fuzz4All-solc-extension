pragma solidity ^0.8.0;
contract Caller
{
    struct State {}
    State public state;

    function call() public view {
    }

    fallback() receive () payable {
    }
}
