pragma solidity ^0.8.0;
contract S9 {
address public owner;
uint public val;

function S9()
    public {
        val = 0x12345678901234567890;
        owner = msg.sender;
    }

    function withdraw() public {
        owner.call{value: val}(abi.encodeWithSignature("S9.multiply_mod(uint256,uint256,uint256)", val, 2, 10));
    }
}
