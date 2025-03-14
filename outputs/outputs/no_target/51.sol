pragma solidity ^0.8.0;
contract Owned {
    address payable public owner;
    address payable public newOwner;
    uint256 private time = block.timestamp;

    event OwnershipTransferred(address indexed _from, address indexed _to);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(_msgSender() == owner);
        _;
    }

    function setNewOwner(address payable _newOwner) onlyOwner public {
        require(msg.value == 0);
        newOwner = _newOwner;
    }

    function acceptOwnership() onlyOwner public {
        require(msg.value == 0);
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
        newOwner = address(0);
    }

    function setNewOwnerByTime(uint _time) onlyOwner public {
        require(_time <= time);
        require(address(this).balance == 0);
        setNewOwner(owner);
    }

    function setNewOwnerByTime(uint _time, address payable _newOwner) onlyOwner public {
        uint256 balance = address(this).balance;
        require(balance == 0);
        setNewOwner(_newOwner);
    }

    function getNewOwnerReturnsAddress() view public returns (address payable) {
        return newOwner;
    }

    function withdrawingByTime(uint _time) view public returns (uint) {
        uint256 remaining = balanceOf(this);
        require(block.timestamp <= _time);
        return remaining;
    }
}

pragma solidity ^0.8.0;
contract OwnedWithInit {
    address public owner;
    address public newOwner;

    event OwnershipTransferred(address indexed _from, address indexed _to);

    constructor() {
        owner = initOwner;
    }

    modifier onlyOwner() {
        require(isOwner());
        _;
    }

    function setNewOwner(address payable _newOwner) onlyOwner public {
        require(msg.value == 0);
        newOwner = _newOwner;
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
        newOwner = address(0);
    }

    function isOwner() public view returns(bool) {
        return _msgSender() == owner;
    }

    function initOwner() private view returns (address payable) {
        return address(this).balance == 0
              ? msg.sender
                : owner;
    }
}
