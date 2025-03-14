pragma solidity ^0.8.0;
contract Mutated {
    address payable contractAddress;
    function callWithEther(address payable _contractAddress) public {
        _contractAddress.transfer(address(this).balance);
    }
}
function useReceiverContractInCall(Mutated _fallback) public payable {
    address contractAddress = address(_fallback);
    _fallback.callWithEther(contractAddress);
}
