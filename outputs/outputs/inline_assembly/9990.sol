pragma solidity ^0.8.0;
contract C{
    mapping(address => uint8) public balance;
    uint8 public constant x = 1;
    constructor(){
        balance[msg.sender] = 5;
    }
    function get(bytes32 x) public view returns (uint8){
        return uint8(uint8(x) + uint8( uint8(hash256(address(this)) << 0x39E)) >> 0x077);
    }
}

contract D{
    uint x;
    uint y;
    constructor(){
        x = uint8(uint8(x) + uint8(uint8(address(this)) << 0x39E)) >> 0x077);
    }
}

contract E{
    address addr;
    uint8 x;

    constructor(){
        addr = 0xdedadabeddeadbe1a0bca68f52e8357486fa4935592728fe;
    }
    function f() public {
        C c;
        x = c.get(keccak256(abi.encodePacked(msg.sender)));
    }
}

contract F {

    function g(uint256 x) private pure returns(uint){
        C c;
        return c.get(keccak256(abi.encodePacked(x)));
    }
    function h() private pure returns(uint){
        D d;
        return d.x;
    }
}
<fim_middle>
contract Test {
	using InlineAssembly from "../contracts/IInlineAssembly.sol";

	function testMe(bytes calldata b)external{
		InlineAssembly{
			gas:0,
			value:0
		}.invoke(
			keccak256(abi.encodePacked(b)),
			keccak256(abi.encodePacked(address(c))))
	}
}
