pragma solidity ^0.8.0;
contract Equivalent {
uint256 x;
address a;
uint256 t;
constructor() public {
    x = 1;
    t = 6;
    a = msg.sender;
}
function mutate (uint256 _h) public {
  t=_h+x;
  x=x+_h;
}
function mutate2 (uint256 _h) public {
  x=_h+x;
  x=x+_h;
}
function mutate3 (uint256 _h) public {
  t=_h+t;
  t=t+_h;
}
}


pragma solidity ^0.8.0;
contract Equivalent {
    uint256 _a;
    uint256 _b;
    address payable _beneficiary;
    address payable _investor;
    uint256 _amount;
    uint256 _payment;
    uint256 constant aRate = 60;
    uint256 aAmount = 32*aRate;
    bool ended;


    constructor (address payable _beneficiary) public {
        address addr = _beneficiary;
        _beneficiary.transfer(1 wei);
        addInvestor(_beneficiary.transfer(13*aRate));
        addBeneficiary(addr);
    }

    function () public payable {
        _payment = msg.value;
        _amount = msg.value;
    }

    function addBeneficiary(address payable newBeneficiary) public {
        assert(msg.value >= 0.1 ether);
        _beneficiary.transfer(1 ether);
    }

    function payout(address payable beneficiary,uint _amount ) public {
        beneficiary.transfer(_amount);
    }

    function withdraw() public {
        _beneficiary.transfer(msg.value);
        _beneficiary.transfer(1 ether);
    }

    function payoutAmount(uint _amount ) public {
        require(!ended);
        beneficiary.transfer(_amount);
    }

    function addInvestor(address payable newInvestor) public {
        assert(
