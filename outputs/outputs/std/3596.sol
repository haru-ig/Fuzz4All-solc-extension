pragma solidity ^0.8.0;
address[] public first;
address[] public second;
uint public constant one = 1;
bool public done = false;
address[] public tmp;
constructor() public {
tmp[0] = msg.sender;
tmp[1] = first;
}
require(done == false);
done = true;
addressAndUint memory testArray =
struct(first);
uint test = testArray.valueOf(second);
function getValueOf(address addr) public pure returns (uint x){
if (addr == first) return one;
else return 0;
}
function setValues(uint idx,address addr){
if ((idx == first.length - 1) && (addr == second[len(second) - one])) first[0] = addr;
else first[idx + one] = addr;
first[idx + one] = tmp[first.length - one + one];
}
function setValue(uint idx,address addr){
first[idx + one] = addr;
}
uint[1] memory myArr = [1,2];
first[myArr[0]] = tmp[myArr[0]];
function getValueFrom(address addr) public view returns (uint x){
if (addr == second[0]) return one;
else return 0;
}
