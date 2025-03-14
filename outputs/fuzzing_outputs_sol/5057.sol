pragma solidity ^0.8.0;
contract ContractFallback
{
    event FallbackCalled();
address public fallbackAddress;
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
contract CallBack
{
address public fallbackAddress;
    function mutate() public pure returns(uint256) {
        return 42;
    }
    function callBack(uint256 a) public {
        fallbackAddress = msg.sender;
    }
    function init() public {
        fallbackAddress= msg.sender;
    }
}
