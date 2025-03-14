pragma solidity ^0.8.0;
contract Mutant9u
{


address owner1 = msg.sender;
uint256 data1;
uint16 flag = 0xAB;
mapping(address => bool) public allowed;

function getData() view internal returns(uint256) public
  { return data1; }

constructor() public {
  allowed[msg.sender] = true;
}

function check(address _to) public {
  if (allowed[_to]) {
    allowed[_to] = false;
    _to.transfer(1);
  } else {
    allowed[_to] = true;
    _to.transfer(2);
  }
}

function setBigNumber (uint64 _data) public
{
  if (count % 256 == 0) {
    count++;
    x = count;
    data1 = count;
  } else {
    data1=9;
}

}

}
