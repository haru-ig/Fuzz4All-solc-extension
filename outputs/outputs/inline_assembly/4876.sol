pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutator9 {
	struct mutator9 {
		uint a;
	}
	mutator9 public data;
	constructor() {
		data.a = 10;
	}
	function add1() public {
	  assembly {
		let _b := g_data
		let data := load(_b, 0x0)
		g_a := add(data, 10)
	  }
	}
	function sub1() public {
	  assembly {
		let _b := g_data
		let data := load(_b, 0x0)
		g_a := add(data,10)
		g_b := sub(data, 1)
		store(g_b, _a, 0x0)
	  }
	}
	function add12() public {
	  assembly {
		let _b := g_data
		let data := load(_b, 0x0)
		store(data, add(data, 2), 0x0)
		g_a := add(data, 1)
		store(g_a, _b, 0x0)
		g_b := data
		g_a := load(_b, 0x0)
		store(g_a, data, 0x0)
	  }
	}
}

pragma solidity ^0.8.0;
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

library MutatorStorage
{
	using SafeMath for uint256;


	modifier field_increment(uint256 field) {
		data(msg.sender).field = data(msg.sender).field.add(field);
		emit Increment(msg.sender, field);
		_;
	}
	record struct storage
	{
		uint256 a;
		mapping(bytes32 => uint256) b;
		mapping(address => uint256) c;
	}
	storage private data;
	constructor() {
		uint256 a = 10;
