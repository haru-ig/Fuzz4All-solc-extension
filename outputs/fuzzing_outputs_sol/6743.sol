pragma solidity ^0.8.0;
contract MutFunction {
    address _fallback;
    function _mutate(uint a) internal {
        return a + 1;
    }


    constructor() public {
        _fallback = msg.sender;
    }

    function setFallback(address addr) public {
        _fallback = addr;
    }

    function Mut(uint a) external {
        _fallback.call(abi.encodeWithSignature("Mut(uint)", _mutate(a)));
        emit MutLog(a);
    }
    event MutLog(uint a);
}


pragma solidity ^0.8.0;
contract FallbackMutatorCall {
    address public _fallback;
    mapping(address => bytes4) public _fallbackFunction;

    constructor () {
        _fallback = msg.sender;
    }
    modifier onlyFallback() {
        require(msg.sender == _fallback, "onlyFallback");
        _;
    }


    modifier ensureFallback(address f) {
        bytes4 fFunc;
        assembly { fFunc := extcodehash(f) }
        require(!_fallbackFunction[f], "fallback already set");
        require(fFunc == bytes4(keccak256(f, "fallback")), 'fallback_invalid');
        _fallbackFunction[f] = fFunc;
        _;
    }


    function MutFallback() external onlyFallback {
        _fallback.call(abi.encodeWithSignature("Mut(uint)", 12));
    }
}


pragma solidity ^0.8.0;

contract CallExample {
    address public _fallback;
    void _mutate(uint a) internal {
        if (a == 0x52)
            revert("zero");
        a = a + 1;
        emit MutLog(a);
    }

    assembly {
         _fallback := mload(0x40)
    }


    function Example() public {
         _fallback.call(0x522A00);
    }


    function Example(address addr) public onlyFallback(addr) {
          addr.call(0x522A00);
    }


    function mutateInCall(uint a) public {

        _fallback.delegatecall(abi.encodeWithSignature("Mut(uint256)",
