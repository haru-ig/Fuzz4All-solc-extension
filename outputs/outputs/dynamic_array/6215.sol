pragma solidity ^0.8.0;
contract Programme
{
address public owner;
address public minter;
mapping(address =>bool) registeredUser;
mapping(address => uint256) numberRegisteredUser;
address[] public allMinters;
struct MinterStatus {
uint256 balance;
uint256 total;
uint256 endOfStaking;
address staker;
}
mapping(address => MinterStatus) public allMinter;
constructor () {
    registerAsMinter(owner);
}
modifier onlyMinter() {
require(isMinter(msg.sender));
_;
}
function registerAsMinter(address minterToAdd) public override onlyMinter {
allMinter[minterToAdd].endOfStaking = (now + (2**256-10)) - 15;
allMinter[minterToAdd].balance = address(this).balance;
allMinter[minterToAdd].total = uint256(allMinter[minterToAdd].balance) +
        uint256(allMinter[minterToAdd].balance) * allMinter[minterToAdd].total / 100000000;
address[] storage currentMinters = allMinters;
allMinters.length++;
allMinter[minterToAdd].staker = minterToAdd;
allMinter[minterToAdd].balance = uint256(allMinter[minterToAdd].balance) * 9999 / 10000;
allMinter[minterToAdd].total = uint256(allMinter[minterToAdd].balance) +
        uint256(allMinter[minterToAdd].balance) * allMinter[minterToAdd].total / 100000000;
}

function isMinter(address minterToCheck) public view returns(bool) {
    return  registeredUser[minterToCheck];
}
}
