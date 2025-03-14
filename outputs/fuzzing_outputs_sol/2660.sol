pragma solidity ^0.8.0;
abstract contract AbstractCallWithFallback {
    address public fallbackAddress;
    function onFallback(address) public virtual payable {
        fallbackAddress = msg.sender;
    }
    function fallback() public {
        if (msg.value > 0) fallbackAddress.call{value: msg.value}(msg.data);
        else fallbackAddress.call{value: address(this).balance}(msg.data);
    }
    function getFallbackAddress() public view returns (address) {
        return fallbackAddress;
    }
   }
contract FallbackExampleOne is AbstractCallWithFallback {
    string public result;
    constructor() {
    }
    function hello() public {
        fallbackAddress.transfer(this.balance);
        require(fallbackAddress.call{value: balanceOf()}, "Fallback success");
        emit FallbackSuccessEvent();
    }
    function getMyResult() public view returns (string memory) {
        return result;
    }
    function setResult(string memory _result) public {
        result = _result;
    }
    function emitFallbackSuccessEvent() internal {
        FallbackSuccessEvent(fallbackAddress, result);
    }
}
contract FallbackExampleTwo is AbstractCallWithFallback {
    string[] public result;
    constructor() {
    }
    function hello() public {
        fallbackAddress.transfer(address(this).balance);
        address b = address(address(fallbackAddress));
        if (b.call{value: balanceOf()}()) emit FallbackSuccessEvent();
        else emit FallbackFailureEvent();
    }
    function getMyResult() public view returns (string[] memory) {
        return result;
    }
    function setResult(string memory _result) public {
        result.push(_result);
    }
    struct FallbackSuccessEvent {
        address public _address;
        string public _result;
        constructor(address _address, string memory _result) {
            _address = _address;
            _result = _result;
        }
    }
    struct FallbackFailureEvent {
        constructor() {
        }
    }
}
