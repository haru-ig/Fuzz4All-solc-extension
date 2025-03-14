pragma solidity ^0.8.0;
contract Mutator3 {
    function payWithFallback(address payable _contract) public payable {
        _contract.call{value : msg.value}("");
    }
}
contract Reverter3 {
    constructor () {
        _ = _contract.call{value : msg.value}("");
    }



}
