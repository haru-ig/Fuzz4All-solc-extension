pragma solidity ^0.8.0;



address payable public owner;


constructor() {

    owner = msg.sender;
}
