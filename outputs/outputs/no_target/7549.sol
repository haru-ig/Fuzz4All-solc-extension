pragma solidity ^0.8.0;
contract ReentrancyGuard {
    address public owner;
    uint256 public mask;
    uint8 public depth;
    constructor () { address checkaddress = owner; owner = checkaddress; }
    modifier nonReentrant() {

        if (mask & 0x1 == 0) {
            mask = 0x1;
            depth++;
            _;
            if (depth > 0) depth--; else mask = 0;
        } else {
            _;
        }
    }
}
contract Ownable is ReentrancyGuard, Ownable {
    event OwnershipTransferred(address indexed _previousOwner, address indexed _newOwner);
    modifier onlyOwner() {
        require(_msgSender() == owner);
        _;
    }
}
contract OwnableWithInit is OwnableInit {
    function OwnableWithInit(address _initialOwner) OwnableInit(_initialOwner) public { }
}
