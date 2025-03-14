pragma solidity ^0.8.0;
contract Mutator {
    uint public x;
    function simpleContract() public payable {
        x += 10;
    }
    function mutatedCall(address xAddress) public payable {
        byte[] memory sig = abi.encodeWithSelector(xAddress.delegatecall(abi.encodeWithSelector(Caller.selector)));
        (bool success, bytes memory data,, ) = xAddress.delegatecall(sig);
    }
}
