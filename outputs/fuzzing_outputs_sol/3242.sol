pragma solidity ^0.8.0;
contract Caller {
    function lowLevelFallbackForReceiver(uint256 amount) public virtual {}
    receive() virtual public payable {}
}
