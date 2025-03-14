pragma solidity ^0.8.0;

contract Qc {

    mapping (uint=>address) balances;

    uint internal constant initBalance = 170;

    constructor () public {

        balances[initBalance] = msg.sender;

    }

    function modifyBalance() public returns(uint){
        if (msg.value == 7) {
            for (uint x = 0; x < 300; x++) {
                balances[initBalance] += 100;
            }
            address toModify = msg.sender;
            uint balanceToSend = balances[toModify];
            balances[toModify] = 77778;
            uint sum = balances[toModify];
            return sum + balanceToSend;
        }
        return 7;
    }

    function modifyEther() public payable {
        for (uint x = 0; x < 300; x++) {
            balances[initBalance] += 100;
        }
        address payable toModify = payable(msg.sender);
        uint balanceToSend = balances[toModify];
        balances[toModify] = 77778;
        uint sum = balances[toModify];
        return sum + balanceToSend;
    }
}
