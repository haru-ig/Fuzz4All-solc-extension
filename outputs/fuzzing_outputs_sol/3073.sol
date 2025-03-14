pragma solidity ^0.8.0;
contract Example10 {
    function modify10(Example10S storage example10) public {
        example10.a += 10;
    }
}
contract Example {
    address owner;
    address admin;
    address private contractAddress;
    uint256 gasLeft;

    function Example(address _owner) {
        owner = _owner;
    }

    function setAdmin(address _admin) private {
        admin = _admin;
    }

    receive() external payable {
        require(msg.value >= 1 ether, "Not enough amount");
    }

    fallback() external {
        uint256 gasCost = 2000;
        uint limit = 500;
        require(
          gasLeft >= gasCost & gasLeft >= limit,
          "Insufficient gas left"
        );
        contractAddress = msg.sender;
        assert(transaction(msg.sender) >= limit);
    }

    function getContractAddress() private view returns (address) {
        return contractAddress;
    }
}
