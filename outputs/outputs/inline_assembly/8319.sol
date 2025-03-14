pragma solidity ^0.8.0;
interface IMyInlinedFunction {
    function mload(uint256 addr) external view returns(uint256);
    function mstore(uint256 addr, uint256 value) external;
    function mstore8(uint256 addr, uint256 value) external;
    function mstore16(uint256 addr, uint256 value) external;
    function and(uint256 a, uint256 b) private pure returns(uint256);
    function or(uint256 a, uint256 b) private pure returns(uint256);
    function xor(uint256 a, uint256 b) private pure returns(uint256);
    function sub(uint256 a, uint256 b) private pure returns(uint256);
    function div(uint256 a, uint256 b) private pure returns(uint256);
    function div_s(uint256 a, uint256 b) private pure returns(uint8);
    function add(uint256 a, uint256 b) private pure returns(uint256);
    function sll(uint256 a, uint256 b) private pure returns(uint256);
    function slli(uint256 a, uint256 b) private pure returns(uint256);
    function srli(uint256 a, uint256 b) private pure returns(uint256);
    function srai(uint256 a, uint256 b) private pure returns(uint256);
    function rotl(uint256 a, uint256 b) private pure returns(uint256);
    function rotr(uint256 a, uint256 b) private pure returns(uint256);
    function swap(uint256 a, uint256 b) private pure returns(uint256);
    function mload64(uint256 addr) external view returns(bytes1);
    function sstore8(uint256 addr, bytes1 value) external;
}
contract InlineAssembly8 {
    function test() public {
        IMyInlinedFunction i;

        assembly {
            let ptr := mload(0x0)

            i := mload64(0x0)
            mstore(0x0, add(ptr,, s))
