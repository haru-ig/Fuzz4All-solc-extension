pragma solidity ^0.8.0;
contract SimpleStorage {
SimpleStorage public store;
address payable internal owner;
constructor() {
store = new SimpleStorage();
owner = payable(msg.sender);
}
address payable internal function setOwner(address payable _owner) {
require(msg.sender == owner, "only owner can set address");
owner = _owner;
}
function test() public {
store.setOwner(address(this));
}
}


pragma solidity >=0.4.22 <0.9.0;

contract IERC20 {

function transfer(address to, uint256 value) external returns (bool);
}

contract SimpleStorage {
SimpleStorage public store;
address payable internal owner;
constructor() {
store = new SimpleStorage();
owner = payable(msg.sender);
}
address payable internal function setOwner(address payable _owner) {
require(msg.sender == owner, "only owner can set address");
owner = _owner;
}
function test() public {
store.setOwner(address(this));
}
}


pragma solidity ^0.8.0;
contract MultiOpt{

struct MultiOptStorage {
uint256 a;
uint256 b;
uint256 x;
uint256 y;
uint256 z;
uint256 w;
uint256 b1 = 1;
uint256 a1 = 2;
}

MultiOptStorage storage MOS = MultiOptStorage({
a : 0,
b : 1,
x : 1,
y : 2,
z : 3,
w : 1
});
function testopt() public {
MOS.a = add(MOS.a, multiply(MOS.b, MOS.x));
MOS.b = add(MOS.a, add(MOS.b, 1));
MOS.x = add(MOS.a1, multiply(MOS.b, MOS.z));
MOS.y = add(MOS.a1, subtract(MOS.b1, 1));
MOS.z = add(MOS
