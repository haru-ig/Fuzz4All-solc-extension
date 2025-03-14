pragma solidity ^0.8.0;
contract Genetic_array{
address public owner;
uint256 public gen;
uint256[]public array;
uint256 public cow = 0;
uint256 public child;
uint256 public nEvals;
address public parent;
address public childOwner;
address[] public parents;
address[] public children;
constructor(uint256 _gen) public{
    gen = _gen;
    parents[0]= msg.sender;
    child = now.add(random(0, 2**uint256(gen)));
    childOwner = parents[0];
    parents[1]= parents[0];
}
modifier restricted{
    uint256 a = gen+1;
    restrict();
    uint256 old_gen;
    old_gen = gen;

    parent = parents[0];
    parents[0] = msg.sender;
    childOwner = parents[1];
    parents[1] = parent;
    child = now.add(random(0, 2**uint256(gen)));
    if(child > 2**uint256(a))child = 2**uint256(a);
    child = childOwner.call{value: 1 ether }("");
    require(parents[1].call{value: 1 ether }("")==abi.encode(0),"Contract not destroyed");
    gen = old_gen+1;
}
function restrict() public restricted{
    require(!parent.send{value: 1 ether }(""),"Contract destroyed");
}
function random(uint256 min, uint256 max) internal pure returns(uint256){
    uint256 s = uint256(keccak256(abi.encode(now))) % max;
    uint256 u = uint256(keccak256(abi.encode(s))) % (max - min + 1) + min;
	s = (s * 9876) + 17;
    return u + (s * 65);
}
}
