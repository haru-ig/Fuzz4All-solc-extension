pragma solidity ^0.8.0;
contract MutatedCaller {
    address payable _addr;
    address payable _fallback;
    uint256 _amount;
    constructor(address payable _addr) { _addr = _addr; }
    receive() external payable {
        _fallback.call.value(msg.value)("");
        _addr.transfer(msg.value);
    }
    fallback() external payable {
    }
}
contract Mod2 {
    constructor() {
        address me = msg.sender;
        (address payable fallback, uint256 _amount) = abi.decode(keccak256(abi.encodeWithSignature("call(tuple, bytes32, uint256)")), (address payable, uint256));
        _fallback = fallback;
        _amount = _amount;
    }
    receive() public {
        _addr.call.value(_amount)("");
    }
}
contract Mod3 {
    constructor(address payable _addr) {
        (address payable fallback, uint256 _amount) = abi.decode(keccak256(abi.encodeWithSignature("call(tuple, bytes32, uint256)")), (address payable, uint256));
        _fallback = fallback;
        _amount = 1250;
    }
    receive() public {
        _addr.call.value(_amount)("");
    }
}
