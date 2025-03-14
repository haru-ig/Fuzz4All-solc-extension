pragma solidity ^0.8.0;
contract CallerNoFallbackReceiveTest {
    event CallerAddress(address payable _caller);
    event FallbackFunction(address payable _fallbackFunction);
    address payable public fallbackAddress;
    address payable public test;
    address payable public fail;
    constructor() {
        fallbackAddress = payable(address(this));
        test = payable(address(this));
        fail = payable(address(this));
    }
    receive() external payable {
        emit CallerAddress(msg.sender);
    }
    function setFallbackFunction(address payable _fallbackFunction) public {
        emit FallbackFunction(_fallbackFunction);
        fallbackAddress = _fallbackFunction;
    }
    function setTestAddress(address payable _test) public {
        test = _test;
    }
    function setFailAddress(address payable _fail) public {
        fail = _fail;
    }
}
