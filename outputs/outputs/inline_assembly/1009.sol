pragma solidity ^0.8.0;
contract Greeter {
mapping(address => uint) public balances;
mapping(address => bool) public isAdmin;
mapping(address => address) public admin;
mapping(address => address) public accounts;
mapping(bytes32 => bool) public whitelisted;
address payable public owner;
address payable public trustedFor;
constructor(address trustedFor_) {
trustedFor = trustedFor_;



}
function sendEther(address _to, uint _value) public {
require(_to!= address(0), "to must not be 0x0.");
require(_value > 0, "value must be greater than 0");
require(!isAdmin[_to], "to is already an admin");

balances[_to] += _value;
trustedFor.transfer(_value);





}
   }
{% endhighlight %}
