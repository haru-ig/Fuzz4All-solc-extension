pragma solidity ^0.8.0;
contract Mutate {
    struct Data {
	uint32[] array;
    uint32 a;
    mapping(uint32 => uint32) map;
}
mapping(uint32 => uint32) private map;
    address public owner;
    uint public x = 0;
	function modify() public {
	uint value = uint32(map[address(this)]);
	value++;
    map[address(this)] = value;
	}
	receive() external payable {
    address from = msg.sender;
	owner = from;
	uint32 value;
	value = uint32(map[address(this)]);
	if (value == 0) {
	map[address(this)] = uint32(from);
    }
    else {
	map[address(this)] = value-1;
    }
    }
}
