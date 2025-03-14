pragma solidity ^0.8.0;
contract Mutator3 {
    function payWithFallback() public payable {}
}
contract Reverter3 {
    constructor () {
        callFallback1(new Reverter2());
        callFallback1(this);
    }

    function callFallback1(address _contract) internal {
        _contract.call{value: msg.value}("");
    }

    function payWithFallback(address _contract) public payable {
        _contract.fallback();
    }
}
