pragma solidity ^0.8.0;
contract CallerAndFallback {
    receive() external payable {}
    fallback() external payable {}
 }
contract Contract {
    enum Direction { UPWARD, DOWNWARD, NONE };
    Contract private top;
    struct CallContext {
        address _contract;
        uint256 _gasRemaining;
        (address, bytes calldata) _callerData;
        address _callAddress;
        bool _functionCalled;
    }
    CallContext private context;
    ReceiveData private receiver;
    address public receiverAddr;
    constructor(address _receiverAddr) {
        receiverAddr = _receiverAddr;
        top = this;
        context.callAddress = msg.sender;
    }
    modifier onlyAllowed(address other) {

        require(context._callerData.msg.sender == other, "only allowed call sender");
        _;
    }
    modifier onlyAddress(address target) {
        require(msg.sender == target, "only allowed call sender");
        _;
    }
    function call(address _contract) external payable returns (bool success) {
        (success, uint256 callGas) = context._contract.call{value: address(this).balance}(abi.encodeWithSignature("foo()"));
        require(context._gasRemaining >= callGas, "gas not enough");
        context._callerData = abi.decode(msg.data, (address, bytes memory));
        context._functionCalled = true;
        context._contract = _contract;
        context._gasRemaining = msg.value;
        context._callAddress = msg.sender;
        return success;
    }
    function callWithoutGas() external payable {
        _callWithoutGas();
    }
    function private _callWithoutGas() private view {
        context._contract.call{value: address(this).balance}(abi.encodeWithSignature("foo()"));
    }
    function send(uint256 value) external payable onlyAddress(address(receiver)) {
        context._contract.transfer(value);
    }
    function receive(bytes memory data) external onlyAllowed(receiverAddr) {
        context._contract.call{value: address(this).balance}(data);
    }
    function callWithStorage(address dest) private view returns(bool success) {
        (success, uint256 gas) = dest.call{value: address(this).balance}(abi.encodeWithSignature("foo()"));
        require(context._gasRemaining >= gas, "gas not enough");
        context.callAddress = dest;
        context._callerData = abi.decode(msg.data, (address, bytes memory));
        context._functionCalled = true;
        context._gasRemaining = msg.value;
        return true;
    }
    function sendTo(address dest) private {
        context.callAddress = dest;
        context._callerData = abi.decode(msg.data, (address, bytes memory));
        address balance = context._contract.call{
