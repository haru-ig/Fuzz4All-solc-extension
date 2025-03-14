pragma solidity ^0.8.0;
contract MyContract {
  function calculate(uint256 x) public pure returns (uint256 result) {
    result = Math.multiply(10, x);
  }
}

contract ProgrammaticContract{
    function getContractAddress() public view returns(address){
        return address(new Math());
    }

    function testMyContract() public view returns(uint256){
        return MyContract.calculate(10);
    }
}


contract TestERC20Token {
  function transfer(address to, uint256 amount) public { }
  function allowance(address from, address to) public view returns (uint256) { return 0; }
  function totalSupply() public view returns (uint256) { return 0; }

  function increaseAllowance(address spender, uint256 addedValue) public returns (bool) { return true; }
}

contract TestERC721Token {
    constructor() public {}
    function approve(address spender, uint256 tokenId) public { }
    function isApprovedForAll(address owner, address operator) public view returns (bool) { return true;}
    function safeTransferFrom(address from, address to, uint256 tokenId) public { }
    function safeTransferFrom(address from, address to, uint256 tokenId, bytes memory data) public { }
    function setApprovalForAll(address operator, bool approved) public virtual returns (bool) { return true; }
    function kickFrom(address from, uint256 amount) public { }
    function totalSupply() public view virtual returns (uint256) { return 0; }
}

contract TestERC721TokenMock is TestERC721Token{
    function totalSupply() public override view returns(uint256) {
        return 0;
    }
}

contract TestERC721TokenMock2 is TestERC721Token{
    function totalSupply() public override view returns(uint256) {
        return 1;
    }
    function getApproved(uint256 tokenId) public view override returns(address) {
        return address(0);
    }
    function setApprovalForAll(address operator, bool approved) public override virtual returns(bool) {
        return true;
    }
    function isApprovedForAll(
