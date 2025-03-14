pragma solidity ^0.8.0;
contract MutatedGeneration10 {
    address private constant ADDRESS_ZERO = 0x0;
    modifier onlyOwner {
        if (msg.sender == address(0xFF0000000000000000000)) throw;
        _;
    }

    receive() external payable {
        require(msg.src!= ADDRESS_ZERO, "Invalid source address");
        address caller = request.value(msg.value)();

        assert(caller == msg.sender);
    }
}
