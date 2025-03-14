pragma solidity ^0.8.0;
contract Caller {
    event SomeEvent();
    bool hasFallback;
    fallback() external payable { hasFallback = true; }
    function () external {
        require(hasFallback, "Caller: Missing fallback function");
        emit SomeEvent();
    }
}
