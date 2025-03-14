pragma solidity ^0.8.0;
contract test {
function log0() public pure {
if(msg.value > 0)
{
assembly {
    revert()
}
}
}
}
pragma solidity ^0.8.0;
contract test {
function log1() public pure {
if( msg.sender >=101 ){

assembly {
  transfer(0, msg.sender)
}
}
}
}
pragma solidity ^0.8.0;
contract test {
constructor(address payable creator, address payable initialSupply) internal {
initialSupply_ = initialSupply;
creator_ = creator;
}
function log2() public view returns (address payable) {
return creator_;
}
}
pragma solidity ^0.8.0;
contract test {
constructor(address, address) internal
{
}
function log3() public view returns (address payable) {
return address(0x0);
}
}
pragma solidity ^0.8.0;
contract test {
constructor(address payable) payable internal {
address(0x0).transfer(address(this));
}
function log4() public view returns (address payable) {
return creator_;
}
}
pragma solidity ^0.8.0;
contract test {
constructor(address) internal {
address(0x0);
}
function log5() public view returns (address payable) {
return address(0x0);
}
}
pragma solidity ^0.8.0;
contract test {
constructor() payable internal {
address(0x0).transfer(address(this));
}
function log6() public view returns (address payable) {
return address(0x0);
}
}
