pragma solidity ^0.8.0;
import "@openzeppelin/contracts-test-helpers/compiler/EmptyContract.sol";
contract A is EmptyContract {
    function f() public pure returns (uint256) {
        return 0;
    }
    function g() public pure returns (uint8, uint16, uint32, uint64, uint128, uint256, bytes16[], bytes32[], bytes64[], bool[], bytes4[], contract[], address[], bytes[], struct {uint8 p : 23} memory, bytes4, uint24[]) pure public returns (uint256, uint16[], uint23[16], uint256[4]) {
        return (0, [], [], []);
    }
    function h() public pure returns (bytes4) {
        return 0xfe804040;
    }
    function i() public pure returns (bytes4, bytes4, bytes8, bytes10, bytes12, bytes20) {
        return (bytes4(0xfefd4340), bytes4(0xfeedce80), bytes8(0xfeedcdee800000), bytes10(0xfeedcdee800000000), bytes12(0xfeedcdee80000000000), bytes20(0xfeedcdee8000000000000), 4294967295, bytes16[16](0xabcde, 0xcdef, 0xcdef, 0xdef, 0xcdee, 0xcdee, 0xcdef, 0xcdef, 0xcdef, 0xcdef, 0xcdef, 0xcdef, 0xcdef, 0xcdef, 0xcdee));
    }
    function j() public pure returns (contract) {
        return 0x00000000000000000000000000000000000000;
    }
}
pragma solidity ^0.8.0;
import "@openzeppelin/contracts-test-helpers/compiler/EmptyContract.sol";
contract ContractA is EmptyContract {
    function () external {
    }
    function a() public pure returns (uint8, uint16, uint32, uint64, uint128, uint256[], uint256[4], bytes8, bytes10, bytes12, address, bytes4, bool, uint24[]) pure public
