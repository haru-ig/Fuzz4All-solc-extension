pragma solidity ^0.8.0;
contract SematicSematicTest_v1 {
    address payable beneficiary = payable(0xA0bA2715311983772384E88917904C175c556f7c);
    event Mint(address account, uint256 amount);
    function mintTokens(uint256 _mintAmount0) public returns (uint256) {
        emit Mint(beneficiary, _mintAmount0);
    }
}
