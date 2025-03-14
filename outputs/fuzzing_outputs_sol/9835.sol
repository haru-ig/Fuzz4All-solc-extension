pragma solidity ^0.8.0;
contract Test{
    constructor() public payable{
        EtherStorage.amount = amount;
    }
    function withEtherStorage() public payable{
        amount--;
    }
}
contract EtherStorage{
    uint amount;
}
contract Bad {
    uint amount;
    function() public payable{
        amount--;
    }
}
