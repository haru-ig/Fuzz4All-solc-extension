pragma solidity ^0.8.0;
contract Caller {
    function foo() public {
        address a = payable(msg.sender);
        a.transferEther(20);
        a.call{value:1 ether}(abi.encodeWithSignature("foo()"));
    }
}
