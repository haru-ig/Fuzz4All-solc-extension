pragma solidity ^0.8.0;
contract Contract22Mut2{
    uint256 public num;
    fallback() external payable {
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
}

pragma solidity ^0.8.0;
contract Contract22Mut4{
    uint256 public num;
    receive() payable external {
       num += 1;
       emit Fulfilled(msg.sender, num);
    }
}

pragma solidity ^0.8.0;
contract Contract33Mut2{
    fallback() public payable {}
}
