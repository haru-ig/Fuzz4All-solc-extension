pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample21 is MixedContactsExample35 {
    function increaseByOneAndTwentyFive(uint h) public {
        require(i == 1);
        j = j + 5;
        increaseByOneAndTen(h);
        increaseByTenAnd10(j);
        increaseByTenAnd10(h);
        increaseBy100And20(h);
        increaseBy100And10(i);
        increaseBy5000And20(i);
        i = 10;
    }
}
contract MixedContactsExample36 {
    uint public i;
    uint public j;
    uint public k;
    uint public y;


    mapping (address => uint[]) balances;


    event BalanceChanged(address indexed from, address indexed to, uint balance);
    event Mine(uint time, uint totalSupply, uint valuePerAddress, uint valueInWei, bytes message);

    uint valuePerEther = 5;
    uint valueInWei = 5555 * (valuePerEther - 1);
    bytes32 message = bytes32(keccak256("Hello! I am a Merkle tree generator!"));

    constructor(uint _balance) public {
        balances[msg.sender] = [_balance];
    }

    function increaseByOneAndTwentyFive() public {
        increaseByOneAndTen(y);
        increaseByTenAnd10(i);
        increaseByTenAnd10(y);
        increaseBy100And20(y);
        increaseBy100And10(j);
        increaseBy5000And20(j);
        y = j + k;
        balances[msg.sender].push(y);
        emit BalanceChanged(msg.sender, msg.sender
