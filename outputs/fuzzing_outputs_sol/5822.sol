pragma solidity ^0.8.0;
contract Caller {
    address addr;
    function Caller() {
        addr = msg.sender;
    }
    function getCallerContract() public returns(address) {
        return addr;
    }
    function getCaller() public returns(address) {
        bytes memory data = abi.encodeWithSignature("hello()");
        (bool success, bytes memory result) = addr.call{value: 1 ether}(data);
        require(success, "Transaction did not succeed");
        require(abi.decode(result, (address)), "ABI doesn't match the actual implementation");
        return addr;
    }
}
