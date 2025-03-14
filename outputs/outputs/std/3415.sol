pragma solidity ^0.8.0;
import "./ConvertMutatorMutatorMutatorMutatorMutatorMutatorMutatorMutator.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/main/contracts/token/ERC721/ERC721.sol";
contract ArrayMutatorMutatorMutatorMutatorMutatorMutatorMutatorMutator is ConvertMutatorMutatorMutatorMutatorMutatorMutatorMutatorMutator {
    function test49() public pure {
        (uint[] memory b, uint a) = to(convert(1), 2);
        bytes memory b1 = to(convert(1), b);

        uint a1 = bytes2uint(b1);

        uint8[] memory d = bytes2uint8(b1);
        uint256 i = uint256(-1);
        uint k = uint8(83);
        a = a + (a1 / k);
    }

    function test48(uint8[] memory b) public pure {
        uint8 i = b.length;
        b[i - 1] = 5;
    }
    function test47() public pure {
        address a;
    }
    function test46() public pure {
        bytes32 a;
    }
    function bytes2uint8(bytes32 x) internal pure returns (uint8) {
       uint8 v;
       require(uint32(x) < 256, "int too large");
       assembly { v := and(mload(add(x, 32)), 255) }
       return v;
    }
    function bytes2uint(bytes32 x) internal pure returns (uint) {uint v;require((uint256(x) >> 64) == 0, "int too large");assembly {v := add(mload(add(x, 1)), mul(mload(add(x, 32)), 0x100000000000000000000000000000000))}}
    function to(uint a, uint[] memory b) internal pure returns (uint[] memory, uint) {
        uint[] memory result = b;
        result[0] = a;
    return (result, a); }
}
