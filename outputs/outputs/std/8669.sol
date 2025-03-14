pragma solidity ^0.8.0;
contract Example
{
    function main(uint256 x) public pure {
        uint256 num = randomize();
        num <<= 3;
        uint256 num2;
        assembly {
            num2 := x
        }
        num >>= 16;
        num2 >>= 3;
    }

    function randomize() public pure returns (uint256 random) {
        uint256 result = uint256(keccak256(abi.encodePacked(blockhash(block.number - 1))))) & uint256(-2**(uint256(random%62))));
    }
}
