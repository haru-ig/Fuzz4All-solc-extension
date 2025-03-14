pragma solidity ^0.8.0;
contract FallbackHolder {
    address public fallback;
    constructor () { fallback = address(0); }
    function setFallbackAddress(address newFallbackAddress) public { fallback = newFallbackAddress; }
}

contract Test {
    address payable fallback;
    mapping(address => bool) public hasEther;
    constructor (address payable _fallback) { fallback = _fallback; }
    receive () payable external {
        hasEther[msg.sender] = true;
        fallback.delegatecall{value: msg.value}("");
    }
    function() external pure {
        hasEther[msg.sender] = true;
    }
    function isUserHasEtherWithFallback(address user) public view returns (bool) {
        return hasEther[user];
    }
    function fallbackWithEtherTransfer() public payable {
        emit EtherSent(address(fallback), msg.value);
    }
}
