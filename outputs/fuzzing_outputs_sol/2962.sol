pragma solidity ^0.8.0;
contract MutatedCaller3 {
    function mut_fallback() public {
        (bool success, bytes memory data) = msg.data.call{value: 0}("");
        require(success, "msg.data.call{value: 0} returned non-zero value");
        require(abi.decode(data, (bool)), "msg.data.call{value: 0} returned non-zero value");
    }
    fallback() external payable {
    }
}
