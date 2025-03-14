pragma solidity ^0.8.0;
function get() public returns (uint) {
    return 5;
}
contract ContractFallback {
    function get() public returns (uint) {
        return 5;
    }
}
address payable ContractCallerCaller = payable(address(new ContractCaller()));
address contractSender = msg.sender;
assert(ContractCallerCaller.send(Msg.minValue.sub(Msg.gas)));
assert(msg.value == Msg.minValue);
address Caller = address(new ContractFallback());
assert(Caller.send(Msg.minValue.sub(Msg.gas)));
uint contractValue;
assert(address(ContractCaller).call.value(Msg.gas)(Msg.minValue, abi.encode(contractValue), abi.encodePacked("get")) == abi.encodeWithSelector(0, 0));

function get() public returns (uint) {
    return 5;
}
