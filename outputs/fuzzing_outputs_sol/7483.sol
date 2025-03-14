pragma solidity ^0.8.0;
contract mutated {
    receive () external payable {
        uint256 _dummy = 0;
        uint256 _dummy2 = 0;
        uint256 _dummy3 = 0;
        (
            bool _dummy,
            bool _dummy2,
            bool _dummy3,
            uint256 _dummy4,
            uint256,
            uint256,
            uint256
        ) = msg.sender.call.value{ value: msg.value }("");
    }
}
