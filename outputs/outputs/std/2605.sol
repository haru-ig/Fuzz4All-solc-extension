pragma solidity ^0.8.0;
contract TestContracts {
    uint x = 0xcafebabe;
}
contract Test is IERC721Metadata {
    constructor () {

    }
    string public name;
    string public symbol;
    bytes4 public constant INTERFACE_ID = 0x5b5e139f;
    function name() public view virtual override returns(string memory) {
        return name;
    }
    function symbol() public view virtual override returns(string memory) {
        return symbol;
    }
    function tokenURI(uint256 tokenId) external view virtual override returns(string memory) {
        return 'Test';
    }
    function supportsInterface(bytes4 interfaceId) public view virtual override returns(bool) {
        if(interfaceId == INTERFACE_ID) {
           return true;
      }
      return super.supportsInterface(interfaceId);
    }
}
