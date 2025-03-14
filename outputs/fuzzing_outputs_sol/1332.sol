pragma solidity ^0.8.0;
interface FallbackFunc {
    function fallback(uint);
}
contract Caller is Contract, FallbackFunc {
    constructor() contract {}
    function f() public payable {}
    function g() public pure virtual {
        call.value(address(this).balance)();
        f();
    }
    receive() external {}
    bytes4 constant internal _fallbackABI = 0x41817c80;
}
contract FallbackContract {
    address fallbackAddr;
    FallbackFunc internal fallback;
    constructor(address _fallbackAddr) public {
        fallbackAddr = _fallbackAddr;
        fallback = FallbackFunc(_fallbackAddr);
    }
    function f() public view returns (bytes4) {
        return fallback.fallback.selector;
    }
    function g() public {
        address ptr = address(fallback);
        fallback.fallback(0);
        emit Emitted(ptr);
    }
    event Emitted(address ptr);
}
