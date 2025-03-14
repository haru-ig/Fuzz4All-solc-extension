pragma solidity ^0.8.0;
contract CallerExample {
    function call() public {
        address _addr = msg.sender();
        (, bool) = _addr.call{value: address(this).balance}("");
    }
}
