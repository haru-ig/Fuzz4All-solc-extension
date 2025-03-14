pragma solidity ^0.8.0;
contract Example9 {
    function example(uint8 _a) public pure returns (uint8) {
        throw;
    }

    receive() external payable {
        uint8 a = example(uint8(_msgSender()));
    }
}
