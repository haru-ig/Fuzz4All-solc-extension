pragma solidity ^0.8.0;


contract FallbackReceiver {

    function transferEther(address account, uint256 amount, uint256 gasPrice) internal {
        address internal contractAddr = address(this);
        fallback(account, amount, gasPrice, contractAddr);
    }

    function transferEtherWithReceive(address account, uint256 amount, uint256 gasPrice, address gasReceiver, bytes memory data) internal {
        fallback(account, amount, gasPrice, gasReceiver, data);
    }

    function receiveEther(address account, uint256 amount, uint256 gasPrice, bytes memory data) public payable {
        bytes4 selector = 0xabcd1234;
        fallback(account, amount, gasPrice, data, selector);
    }

    function receiveEtherWithReceive(bytes4 selector) public payable payable {
        bytes memory data;
        (address account, uint256 amount, uint256 gasPrice, bytes memory) tuple = Caller.receiveEther(selector, data);
        Caller.writeToStorage(selector, tuple, data);
        fallback(account, amount, gasPrice, data);
    }

    function fallback(address account, uint256 amount, uint256 gasPrice, address gasReceiver, bytes memory data) public {
        Caller.checkIfContract(account);
        if (!Caller.hasFallback(account)) {
            Caller.forward(account, amount, gasPrice, gasReceiver, data);
        } else {
            bytes4 selector = Caller.getFallbackSelector(account, gasReceiver);

            uint256 value = Caller.getFallbackValue(account, gasReceiver, selector);
            Caller.executeWithGas(account, gasPrice, amount, gasReceiver, selector, value, data);
        }
    }
}
