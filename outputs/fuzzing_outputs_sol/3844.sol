pragma solidity ^0.8.0;
contract Example2 {

    uint256 constant public maxCap = 100 * (10 ** 6);
    uint public numCaps;
    bool private __hasFallback;
    address payable public callerAddress;

    constructor(uint256 size) {
        numCaps = size;
        __hasFallback = true;
    }



    function call(address payable _to, uint256 _amount) public returns (uint256) {
        bytes memory data = abi.encodeWithSelector(
           this.transfer.selector, _to, _amount
        );
        uint gasLeft = msg.gas() - tx.gasprice * 10 ** 9;
        if (gasLeft < data.length) {
            uint amount = data.length - gasLeft;
            uint txGasFeeCap = amount / tx.gasprice;
            uint amountNeeded = gasLeft * (1 + txGasFeeCap);
            require(
                amount < maxCap - numCaps + numCaps,
                "cannot make sufficient number of transfers for contract"
            );
            return _amount;
        }
        return _to.call{ gas: gasLeft, value: amountNeeded }(data).returnData;
    }



    function call(address payable _to, uint256 _amount) public returns (uint256) {
        bytes memory data = abi.encodeWithSelector(
           this.transfer.selector, _to, _amount
        );
        uint gasLeft = msg.gas() - tx.gasprice * 10 ** 9;
        if (gasLeft < data.length) {
            uint amount = data.length - gasLeft;
            uint txGasFeeCap = amount / tx.gasprice;
            uint amountNeeded = gasLeft * (1 + txGasFeeCap);
            uint capNeeded = maxCap - numCaps;
            require(
                amount < capNeeded + numCaps,
                "contract storage too limited or not enough gas for transfer"
            );
            numCaps += amount;
            return _amount;
        }
        _to.call{ gas: gasLeft, value: amountNeeded }(data).returnData;
        return _amount;
    }


    receive() external payable {
        require(__hasFallback, "fallback must be defined");
    }



    function lowCall() public payable {
        bytes memory data = abi.encodeWithSelector(
            this.transfer.selector, address(0), msg.value
        );
        uint gasLeft = msg.gas() - tx.gasprice * 10 ** 9;
        if (gasLeft < data.length) {
            uint amount = data.length - gasLeft;
            uint txGasFeeCap = amount / tx.gasprice;
            uint amountNeeded = gasLeft * (1 + txGasFeeCap
