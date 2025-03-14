pragma solidity ^0.8.0;
contract ContractFallback
{
    event FallbackCalled();
fallback() public pure returns(uint256) {
        return 42;
    }
    fallback(address payable _fallbackAddress) public {
        fallbackAddress = _fallbackAddress;
        emit FallbackCalled();
    }

    function init() public {
    fallbackAddress= msg.sender;}
}
contract CallBack
{
fallback() public pure returns(uint256) {
        return 42;
    }
    fallback(address _fallbackAddress) public {
        fallbackAddress = _fallbackAddress;
    }

    function callBack(uint256 a) public {
        fallbackAddress = msg.sender;
    }

    function init() public {
        fallbackAddress= msg.sender;
    }
}

pragma solidity ^0.8.0;
contract ContractFallback
{
    event FallbackCalled();
    uint256 public constant FALLBACK_VALUE = 50;
    function fallBackValue() public pure returns(uint256) {
        return FALLBACK_VALUE;
    }
    function nonFallback() public{
        fallback(address(this).balance);
    }
    function init() public {
    fallbackAddress= msg.sender;}
}
contract CallBack
{
uint256 public constant FALLBACK_VALUE = 50;
    fallback(address payable _fallbackAddress) public {
        fallbackAddress = _fallbackAddress;
    }
    fallback(uint256) public pure returns(uint256) {
        uint256 fallbackIntValue = FALLBACK_VALUE;
        return fallbackIntValue;
    }
    fallback(uint256 _fallbackIntValue) public pure returns(uint256 _number) {
        if(_number == FALLBACK_VALUE) {
            _number = _fallbackIntValue;
        }
    }
    fallback(uint256 _a, uint256 _b) public pure returns (uint256 __r, uint256 __q) {
        __q = 10 / (_a + _b);
        __r = 100 / (__a + __b) - (__q * __a) / 100 / (__b
