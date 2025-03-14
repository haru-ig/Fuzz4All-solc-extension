pragma solidity ^0.8.0;
contract FallbackModifierz {
    uint256 b = 1;
    uint256 public z;
    modifier ifValidZ() {
        require(_msgSender() == msg.sender);
        require(z == 1);
        _;
    }
    function setZ(uint256 z_) public {
        z = z_;
    }
    function accept(address, uint256) public ifValidZ {}
}
