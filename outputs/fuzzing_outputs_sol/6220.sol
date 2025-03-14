pragma solidity ^0.8.0;
contract Mutant2Fallback {
    contract Inner {
        function normalCall() internal pure {}
        function externalCall() external pure returns (bool) {
            return false;
        }
        function internalCall() public pure {}
    }
}

contract Caller {
    event EtherSent(address _caller);
    function payable external {
        uint256 initialBalance = msg.value;
        (bool success, ) = msg.sender.call{value: initialBalance}("");
        emit EtherSent(msg.sender);
        assert(success && (msg.value == initialBalance));
    }
    receive() external payable {

    }
}
