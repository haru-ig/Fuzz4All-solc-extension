pragma solidity ^0.8.0;
contract Etherscan {
    address public testAddress;
    constructor(address _testAddress) {
        testAddress = _testAddress;
    }
    function deposit(uint money) public {
        (bool success, bytes memory data) = testAddress.call{value: money}("");
        assert(success);
        (, ) = abi.decode(data, (bool, bytes));
    }
}
