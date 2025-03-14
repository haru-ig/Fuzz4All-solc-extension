pragma solidity ^0.8.0;
interface IERC20Receiver { function receiveApproval(address _from, uint256 _value, address _to, bytes memory _data) external; }


pragma solidity ^0.8.0;
contract MultiRecipient {

    address addressArray;


    mapping(address => uint256) balances;


    constructor(address initalBalance) { balances[msg.sender] = initalBalance; }


    function deposit(uint256 value) public {


        if (value > 0) {


            balances[addressArray] += value;
            addressArray.transfer(value);
        }
    }


    function balanceOf() public view returns (uint256) {
        return balances[msg.sender];
    }


    function withdraw(uint256 value) public {


        if (value > balances[msg.sender]) {
            balances[msg.sender] += balances[addressArray];
            addressesArray.transfer(balances[msg.sender]);
        } else {
            balances[addressArray] += balances[msg.sender];
            balances[msg.sender] = 0;



            msg.sender.transfer(balances[addressArray]);
        }
    }
}
