pragma solidity ^0.8.0;
contract Caller is LowLevelContract {
    function doLowLevelCall(uint amount, address to, bytes memory data)
        public
        pure
        returns (bytes memory)
    {
        lowLevelCall2(to, data, amount);
        return data;
    }

    function lowLevelCall2(address to, bytes memory data, uint amount) public pure {
        lowLevelCall3(to, data, amount);
    }

    function lowLevelCall3(address to, bytes memory data, uint amount) public pure {}
}
