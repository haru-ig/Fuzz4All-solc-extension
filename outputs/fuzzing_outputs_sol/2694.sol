pragma solidity ^0.8.0;
contract Contract {
    function get() public pure {
        return 40;
    }

    fallback function () public payable {}

    receive() external payable {}
}
