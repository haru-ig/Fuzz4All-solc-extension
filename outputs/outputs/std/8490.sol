pragma solidity ^0.8.0;
contract MutationEquivalence
{
	mapping(address => uint) balances;
	constructor() {
		balances[msg.sender] = uint(1e20);
	}
	mapping(address => mapping(address => uint)) friends;
	function getMySum() view returns (uint);
	function getMyFriends(address _addr) view returns (uint);
	function addFriend(address other) {
		friends[msg.sender][other] = uint(1e20);
	}
	function delFriend(address other) {
		delete friends[msg.sender][other];
	}
}
contract Example
{
	address owner;
	address addr1;
	address addr2;
	uint time;
	uint time1;
	uint64 time2;
	uint time3;
	uint32 time4;
	uint32 seconds;
	uint32 days;
	uint32 hours;
	uint64 lastHash;
	bytes32 blockhash;
	uint difficulty;
	constructor() {
		(owner,addr1,addr2,time,time1,time2,time3,time4,seconds,days,hours,lastHash,blockhash,difficulty) = abi.decode(keccak256(abi.encode("0x506a97e45d45cbba471e19788bb6e6483c97769e707c01412f7b074a8a4576a0")), (address,address,address,uint,uint,uint,uint,uint,uint,uint,uint,uint,uint,uint));
		lastHash = blockhash(block.timestamp);
	}
	function add(uint i) {
		uint result = i + 1;
		assert(this.difficulty == 0);
		if (msg.sender!= owner) {
			return;
		}
		uint time = now;
		uint32 seconds = uint32(time - this.time);
		uint32 days = seconds / 86400;
		uint32 hours = seconds / 86400 % 24;
		uint32 minutes = seconds / 60 % 60;
		uint64 lastHash = int64(sha3(abi.encode(lastHash,blockhash)));
		if (lastHash >= abi.decode(sha3(abi.encodePacked(lastHash,abi.encode(block.timestamp,time))), (uint), ())) {
			seconds+=0.5;
			days++;
		}
		if (lastHash >= abi.decode(sha3(abi.encodePacked(lastHash,abi.encode(block.timestamp,time))), (uint), ())) {
			seconds+=0.5;
			hours++;
		}
		if (lastHash >= abi.decode(sha3(abi.encodePacked(lastHash,abi.encode(block.timestamp,time))), (uint), ())) {
			seconds+=0.5;
