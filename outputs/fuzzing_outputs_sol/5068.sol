pragma solidity ^0.8.0;
contract ContractFallback
{
    function getFallbackAddress() public view returns(address) {
        return fallbackAddress;
    }
    function mutate() public pure returns(uint256) {
        return 42;
    }
    function fallback() public payable {
        assert(msg.sender == fallbackAddress);
        fallbackAddress = msg.sender;
    }
}
contract CallBack
{
address public fallbackAddress;
    function getFallbackAddress() public view returns(address) {
        return fallbackAddress;
    }
    function mutate() public pure returns(uint256) {
        return 42;
    }
    function callBack(uint256 a) public payable {
        fallbackAddress = msg.sender;
    }
}
