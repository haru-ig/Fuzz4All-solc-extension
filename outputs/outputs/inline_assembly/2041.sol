pragma solidity ^0.8.0;
contract SimpleY5 {
    address payable _owner;

    constructor() payable {
        require(msg.value >= 0.00001 ether, "Incorrect amount");
        _owner = msg.sender;
    }

    mapping(address => uint) private _balances;


    function() payable {
        _balances[payable(msg.sender)] += msg.value;
    }






    /*
    function withdraw(uint amount) public {

        require( msg.sender == _owner, "Only owner allowed to withdraw.");

        uint amountToSend = amount < 5000000? amount : 5000000;


        uint totalWithdrawal = 5000000;
