pragma solidity ^0.8.0;
address Caller = 0xD3c7b2687B8cB1D966000E232cF7D1C4bB55f1D3;

contract CallerImplementation is Caller {

    uint getAdress = address(this);
    uint callResult;
    address payable fallbackFunc;

    constructor(address payable _target, address payable _fallback) {
        fallbackFunc = _fallback;
        callResult = fallbackFunc(1);
    }

    function set(address payable _fallback) public {
        fallbackFunc = _fallback;
    }

    function get() external override pure returns (uint) {
        return getAdress;
    }

    function fallback(uint x) external override payable {
        fallbackFunc.call{value: x}("");
    }
}
address receiver;

contract ContractToTest is Caller {
    address payable fallbackAddress;
    constructor() {
        fallbackAddress = payable(0x642b5b05437825E731d94C97350A903C38768F66);
    }
    function get() public returns (address,uint) {
        return (fallbackAddress,42);
    }
}
