pragma solidity ^0.8.0;
contract Contract1NMut{
    event Fulfilled(address indexed owner, uint256 indexed value);
    uint256 public num;
    receive() external payable {
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
}
contract Contract1N{
    event Fulfilled(address indexed owner, uint256 indexed value);
    uint256 public num;
    receive() external payable {
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
}
contract Contract2Mut{
    event Fulfilled(address indexed owner, uint indexed value);
    uint256 public num;
    receive() external payable {
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
}
contract Contract2N{
    event Fulfilled(address indexed owner, uint indexed value);
    uint256 public num;
    receive() external payable {
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
}
contract Contract3Mut{
    event Fulfilled(address indexed owner, uint256 indexed value);
    uint256 public num;
    receive() external payable {
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
}
contract Contract3N{
    event Fulfilled(address indexed owner, uint256 indexed value);
    uint256 public num;
    receive() external payable {
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
}

pragma solidity ^0.8.0;
contract Contract3Mut{
    event Fulfilled(address indexed owner, uint indexed value);
    uint256 public num;
    receive() external payable {
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
}
contract Contract3N{
    event Fulfilled(address indexed owner, uint indexed value);
    uint256 public num;
    receive() external payable {
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
}
contract Contract4Mut{
    event Fulfilled(address indexed owner, uint256 indexed value);
    uint256 public num;
    receive() external payable {
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
}
contract Contract4N{
    event Fulfilled(address indexed owner, uint256 indexed value);
    uint2
