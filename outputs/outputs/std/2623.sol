pragma solidity ^0.8.0;
contract Array is IERC721Enumerable {
	constructor() public {
		totalSupply_ = 0;
	}
	mapping(address => address[] ) public _addresses;
	uint256 public totalSupply_ ;

    function transferFrom(address from, address to, uint256 tokenId) public  returns (bool success){
        require(from!= address(0));
        require(to!= address(0));
        require(tokenId < totalSupply_ && tokenId > 0);
        require(balanceOf(from) >= tokenId);
        _addresses[from].remove(tokenId);
        _addresses[to].push(tokenId);

        totalSupply_--;
        return true;
        }

    function tokenOfOwnerByIndex(address owner, uint256 index) public view returns (uint256){
        require(owner!=address(0));
        require(index < balanceOf(owner));
        uint256 count = 0;
        for(uint256 i = 0; i < _addresses[owner].length; i++){
          if(_addresses[owner][i] == index ){
            count++;
          }
        }
        if(count == 0) return 0;
        return _addresses[owner][_addresses[owner].length - count];
    }

   function tokenURI(uint256 _tokenId) public view returns(string memory){
        require(_tokenId < totalSupply_ && _tokenId > 0);
        bytes memory _byteString = bytes(name_);


        bytes memory _
