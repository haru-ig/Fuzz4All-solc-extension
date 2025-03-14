pragma solidity ^0.8.0;
contract Complex
{
address public fallbackAddress;
    function mutate() public pure returns(uint256) {
        return 42;
    }
    function fallback(uint256 a) public {
        return;
    }
    function init() public {
        fallbackAddress = msg.sender;
    }
}
