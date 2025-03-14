pragma solidity ^0.8.0;
contract ConstantAccessBlock12 {
    function test() public returns (bool) {
        bytes memory _constant = "0000000000000000000000000000000000000000000000000000000000000";
        assembly {
			let _var := gt(mload(0xc0de0000000000000), add(mload(0x40), 0x200000000000000000000000000000000000))
        }
        return bytes(_constant).length == bytes(_var).length;
    }
}
