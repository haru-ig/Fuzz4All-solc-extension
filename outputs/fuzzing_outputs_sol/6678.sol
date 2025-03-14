pragma solidity ^0.8.0;
contract Caller {
    function payableReceive(uint256 amount) public pure virtual returns(bool)
    {
        return true;
    }

    function payableFallback(uint256 amount) public fallback(uint256) pure virtual {
        address payable fallbackAddress = payable(msg.sender);
        fallbackAddress.transfer(amount);
    }
}
