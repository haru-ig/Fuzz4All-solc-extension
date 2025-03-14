pragma solidity ^0.8.0;
contract Contract19Mut{
    event Fulfilled(address owner, uint256 indexed value);
    uint public num;
    function fallback() payable {
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
}
contract Contract19N{
    event Fulfilled(address indexed owner, uint256 indexed value);
    uint public num;
    function () public payable{
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
}
