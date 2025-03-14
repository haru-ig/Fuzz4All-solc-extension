pragma solidity ^0.8.0;
contract Vet {
    bool isDead;
    address owner;
    constructor() {
        owner = msg.sender;
    }
    modifier onlyOwner {
        require(msg.sender == owner, "Caller");
        _;
    }
    function setDead() onlyOwner {
        isDead = true;
    }
}
pragma solidity ^0.8.0;
contract Caller {
    address private contractAddress;
    bool isDead;
    Vet v;
    constructor() {
        contractAddress = msg.sender;
    }
    function getContractAddress() public view returns (address) {
        return contractAddress;
    }
    modifier onlyOwner {
        require(contractAddress == msg.sender, "Caller: invalid contract");
        _;
    }
    function setDead() onlyOwner {
        if (isDead) {
            return;
        } else {
            isDead = true;
        }
    }
}
