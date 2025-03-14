pragma solidity ^0.8.0;
contract ContractFallback
{
    address public fallbackAddress;
    event FallbackCalled();
    function mutate() public pure returns(uint256) {
        return 42;
    }
    function fallback(uint256 a) public {
        fallbackAddress = msg.sender;
        emit FallbackCalled();
    }
    function init() public {
        fallbackAddress= msg.sender;}
}
contract FallbackTest
{
    address public fallbackAddress;
    event FallbackCalled();
    fallback() public{
        fallbackAddress = msg.sender;
        emit FallbackCalled();
    }
    function mutate() public pure returns(uint256) {
        return 42;
    }
    function init() public {
        fallbackAddress= msg.sender;
    }
}
