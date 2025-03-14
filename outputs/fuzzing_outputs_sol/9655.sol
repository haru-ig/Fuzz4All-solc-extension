pragma solidity ^0.8.0;
contract Mutate {
    function mutate() public {

        address payable sender = msg.sender;
        uint32[] memory a = [1, 2, 3, 4];
        for (uint256 i; i < a.length; ++i) {
            a[i] = 0;
        }
    }
}
