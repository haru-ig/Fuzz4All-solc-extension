pragma solidity ^0.8.0;
contract Modul{
        uint s;
        constructor(){
            s = 5;
        }
        fallback() external {
            s = s + 2;
        }
}

pragma solidity ^0.8.0;
contract Modul{

    mapping (address => uint256) public accountBalance;
    uint private constant _amount = 100;
    constructor(){

        accountBalance[msg.sender] = _amount;
    }

    function modifyBalance(uint newBalance) public {
        accountBalance[msg.sender] = newBalance;
    }
}
