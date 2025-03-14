pragma solidity ^0.8.0;
contract M255{
    uint256 public x = 1;
    uint256 public y = 2;
    address public owner;
    constructor(){
        owner = msg.sender;
    }
    modifier hasOwner(){
        msg.sender == owner;
        _;
    }
    function multiply(uint z) public hasOwner{
        x=x*z;
    }
    function divide(uint z) public hasOwner{
        x=x/z;
    }
}

pragma solidity ^0.8.0;
contract M256{

    address public owner;
    constructor(){
        owner = msg.sender;

    }

    modifier hasOwner(){
        require(msg.sender == owner,"must be the owner");
        _;
    }

}
