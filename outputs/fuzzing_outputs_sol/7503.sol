pragma solidity ^0.8.0;
contract SimpleFallbackFunction {
    uint a = 42;
    uint public x;
    fallback() public {
        x = a + a;
    }
}
contract PayableFallbackFunction {
    uint a = 42;
    uint public x;
    fallback() public payable {
        x = a + a;
    }
}
contract FallbackReceiverFunction {
    uint a = 42;
    uint public x;
    receive() public {
        x = a + a;
    }
}
contract ContractFallbackFunction {
    uint a = 42;
    uint public x;
    fallback(uint x_) public {
        x = x_;
    }
}
contract NoFallbackFunction {
    uint a = 42;
    uint public x;
    fallback(uint x_) public {
        x = x_;
    }
}
contract Caller {
    fallback() public;
    address public caller;
    uint y;
    FallbackModifier() public {
        caller = msg.sender;
    }
    bool validAddress(address x) public {
        bool res = (x == msg.sender || x == msg.sender1);
        return res;
    }
    function callEvmWithLowLevelCall() public payable {
        (address x, uint y, uint z) = EvmEvm(caller).directCallValueEvmWithLowLevelCall.call(
            bytes4(keccak256("foo")),
            2 * 3,
            address(this),
            msg.data
        );
        caller.call{value: 2 }("");
        EvmEvm(caller).directCallValueEvmWithLowLevelCall.call(
            bytes4(keccak256("foo")),
            2 * 6,
            address(this),
            msg.data
        );
        caller.call{value: 5 }("");
        EvmEvm(caller).directCallValueEvmWithLowLevelCall.call{
            value: 33
        }("");
        caller.send("");
    }
}
contract EvmEvm {
    address payable _caller;
    function call(bytes memory data) public payable returns (uint success, bytes memory returnData) {
        require(msg.value == 1, "");
        returnData = abi.encode(msg.sig);
        if (_caller!= address(0)) {
            _caller.call{value: 1}("");
            EvmEvm(_caller).call.value(2 * 3)("");
            _caller.call{value: 0}(bytes4(keccak256("foo")));
            EvmEvm(_caller).call.value(2 * 6)("");
            _caller.call{value: 2}("");
            EvmEvm(_caller).call.value(2 * 3)("");
            _caller.send{value: 4
