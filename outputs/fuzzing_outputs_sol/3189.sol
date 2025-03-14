pragma solidity ^0.8.0;
contract Contract12Mut5{
    event Fulfilled(address owner, uint256 indexed value);
    uint256 public num;
    receive() external payable pure {
        num = 1;
        num = 2;
    }
}

pragma solidity ^0.8.0;
contract Contract13Mut5{
    event Fulfilled(address owner, uint256 indexed value);
    uint256 public num;
    receive() external payable {
        num = 1;
        num = 2;
    }
}

pragma solidity ^0.8.0;
contract Contract14Mut5{
    event Fulfilled(address owner, uint256 indexed value);
    uint256 public num;
    constructor() public payable {}
    receive() external {

    }
}

pragma solidity ^0.8.0;
contract Contract15Mut5{
    event Fulfilled(address owner, uint256 indexed value);
    uint256 public num;
    receive() external payable {
        uint256 value = 1;
        num = value;
    }
    function Fallback() public payable {
        uint256 value = 2;
        num = value;
        emit Fulfilled(msg.sender, value);
    }
}
