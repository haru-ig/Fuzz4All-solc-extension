pragma solidity ^0.8.0;
contract CallerExample {
    receive() public payable {
        if (msg.data.length > 64) {
            bytes memory new_data = abi.decode(msg.data, (bytes));
            require(new_data.length == 32  , "Caller-input-not-valid");
        }
    }
    fallback() external payable {
    }
}
