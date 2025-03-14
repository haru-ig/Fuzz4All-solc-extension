pragma solidity ^0.8.0;
contract L45 {
    address addr;
    constructor() {
        addr = msg.sender;
    }
    fallback () external payable {}
    receive() external payable {}
    function foo() public {
        if (msg.value == 0) {
            addr.call(abi.encodeWithSignature("use3()"));
        } else {
            callSelf();
        }
    }
    function callSelf() public {
        addr.call{value:msg.value}(abi.encodeWithSignature("use3()"));
    }
}
