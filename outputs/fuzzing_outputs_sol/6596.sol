pragma solidity ^0.8.0;
contract Caller {
    function callWithFallback(address payable c) public pure {
        (bool result, bytes memory data) = c.call.value(1 ether)("");
        require(result, "Unexpected result");
        require(data.length == 0, "Expect empty data");
    }
}
