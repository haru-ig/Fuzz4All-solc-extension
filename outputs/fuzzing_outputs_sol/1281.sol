pragma solidity ^0.8.0;
contract DelegateFallback {
    function handleDelegate()
        modifier onlyDelegate()
    {
        DelegateFallback.receive();
        _;
    }
}
