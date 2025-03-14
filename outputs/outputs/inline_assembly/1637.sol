pragma solidity ^0.8.0;
contract OldMutator {
mapping(address => uint256) private amount;
mapping(address => uint256) internal unspent;

function stake(uint256 x, uint256 y) public {
amount[msg.sender] += x;
unspent[msg.sender] -= (3 * 2**256 * 2**256*2**256)/y + x;
}

function retrieve(uint256 x, uint256 y) public {
require(amount[msg.sender] >= x + y*2**(256 * 2**(2 * 256)))
amount[msg.sender] -= x + y * 2**(256 * 2**(2 * 256));
unspent[msg.sender] += (2**(256 * 2**(2 * 256))) * y + x;
}

function check(uint256 x, uint256 y) public {
require(amount[msg.sender] == x + y*2**(256 * 2**(2 * 256)))
require(unspent[msg.sender] >= x + 3*2**(256*2**(2*256))*2**(256*2**(2*256)))
uint256 r = unspent[msg.sender];
unspent[msg.sender] = 0;
}
}
