pragma solidity ^0.8.0;
contract MyContract {
    uint myuint;
    uint constant myconst = 3 * 6 / 9;
    function f() public {
        myuint = myconst;
    }
}

pragma solidity ^0.8.0;
contract MyContractAddress {

    address private ownerAddress;
    bytes32 private seed;

    constructor() {
       seed = keccak256("hello");
       ownerAddress = msg.sender;
       msg.sender.transfer(address(this).balance);
    }

    modifier onlyOwner() {
        require(msg.sender == ownerAddress);
        _;
    }

    function getOwnerAddress() public view returns (address) {
        return ownerAddress;
    }

    function transferEther(address dest, uint256 value) public onlyOwner {
        dest.transfer(value);
    }

    function getSeed() public view returns (bytes32) {
        return seed;
    }
}
