pragma solidity ^0.8.0;
contract MutationVerifier {
    function mutate() public returns (uint) {
        _;
        {
            (bool success, ) = msg.sender.call{value: 1}("");
            revert("");
        }
        return 1;
    }
}
