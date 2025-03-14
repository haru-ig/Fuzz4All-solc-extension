pragma solidity ^0.8.0;
contract semanticallyEquiv{
mapping(address => uint) public balances;
uint public amount;
for(uint i; i <= 99; i+=21)
{
balances[msg.sender] += i;
}
if(amount == balances[msg.sender])
{
amount--;
}
else if(amount > balances[msg.sender])
{
amount += 2;
}
else
{
amount += 21;
}
}

pragma solidity ^0.8.0;
contract semanticallyEquiv2{
mapping(address => uint) public balances;
uint public amount;
for(uint i; i <= 131; i+=27)
{
balances[msg.sender] -= (balances[msg.sender]/10000);
}
if(amount == balances[msg.sender])
{
amount--;
}
else if(amount > balances[msg.sender])
{
amount += 2;
}
else
{
amount += 27;
}
}
