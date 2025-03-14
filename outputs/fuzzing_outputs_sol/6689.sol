pragma solidity ^0.8.0;
contract Caller {
    address public contractAddress;
    uint public amount;
    mapping(address => uint[]) public balanceOf;
    uint public length;

    constructor (uint _amount) public {
        contractAddress = msg.sender;
        amount = _amount;
        balanceOf[contractAddress] = new uint[](1);
        balanceOf[contractAddress][0] = amount;
        length = 1;
    }

    function () external returns (uint) {
        if (msg.sender == contractAddress ) {
            balanceOf[contractAddress][length] = amount;
            length++;
            return uint(keccak256(block.datetime, block.difficulty, block.number, block.coinbase, block.timestamp, block.author, block.difficulty, block.difficulty, block.difficulty, block.difficulty, block.difficulty, block.difficulty, block.difficulty));
        }
        return uint(keccak256(block.datetime, block.difficulty, block.number, block.coinbase, block.timestamp, block.author, block.difficulty, block.difficulty, block.difficulty, block.difficulty, block.difficulty, block.difficulty, block.difficulty, block.difficulty));
    }
}
