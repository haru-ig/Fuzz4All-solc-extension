pragma solidity ^0.8.0;
contract AbstractCallWithFallbackMutated {
    string constant newStr = "This contract has a fallback function.";
    function onFallback(address) public virtual payable {
        selfdestruct(msg.sender);
        assert(false);
    }
    function fallback() public {
        assert(keccak256(abi.encodePacked(newStr)) == keccak256(abi.encodePacked(str)));
    }
    function setPay() public {
    }
}
