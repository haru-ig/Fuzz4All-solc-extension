pragma solidity ^0.8.0;
contract Receiver {
    function payableFallback(uint _value) external payable {}
}
contract Caller {
    address expectedFallback;
    function () external payable {
        expectedFallback.call{value: msg.value}('');
        (bool result,   ) = expectedFallback.staticcall{value: msg.value}('');
        require(result);
    }

    function setExpectedFallback(address newFallback) public {

        expectedFallback = newFallback;
    }
}
