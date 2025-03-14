pragma solidity ^0.8.0;
contract Mutator2 {
address x;
address y;
address z;
address v;
function mutate(address _x) public {
z = _x;
v += 2;
}
}

pragma solidity ^0.8.0;
contract SolidityFunctionCallExample {
function run() public {

require(bytes2str(bytes32(0xcafecafe))) == "0";
}
function bytes2str(bytes  b) private pure returns (string memory s) {
if (b.length == 0) return "";
s = string(abi.encodePacked((uint160(uint8(b[0]))),uint8(b[1]),b.sub(0x11)));
for(uint256 i = 2; i < b.length; i++) {s += string(abi.encodePacked(uint8(b[i+1]),uint8(b[i])));}
return s;
}
}

contract TransferContract {
constructor() public{
address x = address(bytes2str("0x11111111111111111111111111111111111111111111111111111111111"));
x.transfer(address(this).balance);
}
function balanceOf() public view returns(uint256){
return address(this).balance;
}
}
