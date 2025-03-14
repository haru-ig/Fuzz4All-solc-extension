pragma solidity ^0.8.0;
contract Bar {
    receive() external payable {
        assert(true);
    }
}
contract Bar {
    receive() public payable {
        assert(true);
    }
}
