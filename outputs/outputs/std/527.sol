pragma solidity ^0.8.0;

import "../interface/IERC20.sol";
import "./IERC712.sol";
contract TokenMock is IERC712 {
    function name() public pure override returns (string memory) {
        return "NFT Mock";
    }

    function symbol() public pure override returns (string memory) {
        return "MNFT";
    }

    function tokenURI(uint256 tokenId) public override pure returns (string memory) {
        return '[{"name":"A","symbol":"B","contract":"TokenMockContract"}]'
    }

    function domainSeparator() public pure override view returns (bytes32) {
        return keccak256(
            abi.encode(
                IERC712(0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470)
            )
        );
    }
}
