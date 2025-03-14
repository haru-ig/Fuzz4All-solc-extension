pragma solidity ^0.8.0;
contract Contract16Mut{
    event Fulfilled(address owner, uint indexed value);
    uint256 public num;
    receive() external payable {
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
    function getNumber() public view returns(uint) {
        return num;
    }
}
contract Contract16N{
    event Fulfilled(address indexed owner, uint256 indexed value);
    uint256 public num;
    receive() external payable {
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
    function getNumber() public view returns(uint) {
        return num;
    }
}

pragma solidity ^0.8.0;
contract Contract17{
    event Fulfilled(address indexed owner, uint256 indexed value);
    uint256 public num;
    receive() external payable {
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
    function getNumber() public view returns(uint) {
        return num;
    }

    function setNumber(uint number) public {
        num = number;
    }
}

pragma solidity ^0.8.0;
contract Contract18{
    event Fulfilled(address indexed owner, uint256 indexed value);
    uint256 public num;
    receive() external payable {
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
    function getNumber() public view returns(uint) {
        return num;
    }

    function setNumber(uint number) public {
        num = number;
    }
}
