pragma solidity ^0.8.0;
contract Modul{
        uint internal s;
        constructor() private {
            s = 0;
        }

        mapping(address => uint) public balanceOf;

        function withdraw(uint _amount) public{
                address payable _sender = payable(msg.sender);
                uint _balance = balanceOf[_sender];

                balanceOf[_sender] -= _amount;
                _sender.transfer(_balance);
        }
   }



contract Test {

uint public first;

constructor() public {
  first = 23;
}

function test(uint a) public {
  a = 27;
}
}
