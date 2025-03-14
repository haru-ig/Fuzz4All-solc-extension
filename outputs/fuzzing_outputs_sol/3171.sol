pragma solidity ^0.8.0;
contract Contract12Mut5{
    event Fulfilled(address owner, uint256 indexed value);
    uint256 public num = 1;
    function Contract13Mut1() public payable{
        num = 3;
    }
    receive() external payable {
        num = 4;
    }
}

pragma solidity ^0.8.0;
contract Contract13Mut6{
    event Fulfilled(address owner);
    address public fallbackOwner;
    function fallbackOwner() public {
        fallbackOwner = msg.sender;
    }
    receive() external payable
    {
        fallbackOwner.transfer(payable(fallbackOwner).balance);
        revert();
    }
}

pragma solidity ^0.8.0;
contract Contract14Mut7{
    uint256 num = 1;
    fallback() public {
        num = 2;
    }
}
