pragma solidity ^0.8.0;

contract MutatedMutators {

    function set (uint a) public returns (uint) {
        address x = msg.sender;

        assembly {
            a := a + 10
        }

        require(x.call(abi.encodeWithSignature("set(uint256)"), new bytes(abi.encode(a)))) == 0x0;
        return a;
    }
}
