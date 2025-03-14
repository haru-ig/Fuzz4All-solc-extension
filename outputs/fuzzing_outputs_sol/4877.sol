pragma solidity ^0.8.0;
contract Mutator1 {
    function payWithFallback(address payable _contract) public payable {}
}

contract Caller {
    function callWithFallback(address _contract, bytes memory _data) public view returns (bytes memory) {
        (bytes memory output, bytes memory data) = Mutator1(_contract).call(_data);
        return output;
    }
}
