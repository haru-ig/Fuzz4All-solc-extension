pragma solidity ^0.8.0;
contract CallerFallbackWithAddress {
    ReceiveFunction address receive;

    function () external payable {
        receive();
    }
}
