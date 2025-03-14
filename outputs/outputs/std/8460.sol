pragma solidity ^0.8.0;
contract MutateExample2 {

    uint price = 1300000000000000000;

    uint public rate = 0.2;
    address payable owner;



    constructor() {
        owner = msg.sender;
    }


    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }


    function increasePrice(uint _tokenId) public onlyOwner {
        price = price + rate * 0.01;
        Transfer(_tokenId, msg.sender, msg.sender, price);
    }


    function updateAmount(uint224 _tokenId, uint256 _amount) public onlyOwner
    {
        price = price + (_amount * rate);
        Transfer(_tokenId, msg.sender, msg.sender, _amount);
    }

}
