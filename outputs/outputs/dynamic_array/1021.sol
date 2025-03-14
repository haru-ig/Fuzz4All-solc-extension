pragma solidity ^0.8.0;
contract Burner {
    using AddressUtils for address;

    uint256 private _tokenId;

    function burn(uint256 tokenId) public {
      if (tokenId <= _tokenId)
        _tokenId--;

      uint256 _tokenValue = tokenId * 4000000000000;
      address _tokenAddress = 0xb329c6265702508d9f214924fd0fb73069849b5f;

      uint256 _tokenBalance = address(this).balance;
      _tokenAddress.call.value(_tokenValue)("");
      uint256 _balanceRemaining = address(this).balance.sub(_tokenBalance);

      revert("Error!", "");
    }
}
