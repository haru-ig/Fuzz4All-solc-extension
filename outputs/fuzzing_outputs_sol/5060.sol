pragma solidity ^0.8.0;
contract ContractFallback
{
    event FallbackCalled();
    uint256 private _count;
    fallback(uint256 x) internal pure {
        _count = x;
    }
    function _fallback() public {
        fallbackAddress = msg.sender;
        emit FallbackCalled();
    }
    function init() public {
        _fallback();}
}
