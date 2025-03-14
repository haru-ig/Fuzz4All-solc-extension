pragma solidity ^0.8.0;
contract LowLevelCalls
{


    function lowLevelCall(address receiver, uint256 value, bytes memory data) public pure returns (bytes memory) {
        require(receiver.call{ value: value }(data));
        return new bytes(0);
    }
}
