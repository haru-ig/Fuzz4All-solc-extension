pragma solidity ^0.8.0;
contract Caller {
    address public contract_to_call;
    constructor() {

        address toCallAddr = 0xB1c3D026f6B905eA05C11309649456C5A6cEE1a7;
        contract_to_call = address(toCallAddr);
    }

    function test(uint x) public {
        emit FunctionToBeCalled(this, x);
    }

    function emitFunctionToBeCalled(address addr, uint x) internal {
        addr.delegatecall(abi.encodeWithSelector(NonFallback.test.selector, x));
    }
}
