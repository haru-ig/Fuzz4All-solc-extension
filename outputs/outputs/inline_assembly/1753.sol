pragma solidity ^0.8.0;
contract MutatorS32 {
    uint256 constant MAX = 2**255;

    uint public v;
    uint public c = 0;
    function callContract() public returns (uint) {
        c = 0;
        MutatorS32  memory _instance = MutatorS32(0);
        address addressToInvoke = msg.sender;
        addressToBytes32(addressToInvoke, c);
        assembly {calldatacopy(0, 0, calldatasize)}
        assembly {_instance.call()}
        c = 0;
        return c;
    }
}
