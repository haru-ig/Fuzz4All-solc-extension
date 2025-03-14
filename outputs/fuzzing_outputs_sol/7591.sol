pragma solidity ^0.8.0;
contract ContractExample
{
    uint x;
    function call() public {
        x += 1;
    }
}
contract CallerExample
{
    function call() public {
        x += 1;
    }
}
