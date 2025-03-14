pragma solidity ^0.8.0;
contract Fallback
{
    constructor()
    {
        address fallback = Complex.fallbackAddress;
    }
    function fallback(address addr) public pure returns(uint256){
        return 1;
    }
    function init() public {
        msg.sender;
    }
}
