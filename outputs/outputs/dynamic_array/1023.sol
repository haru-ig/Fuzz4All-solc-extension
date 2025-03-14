pragma solidity ^0.8.0;
contract LotteryWithCalldata {
    address[] internal _addressAddressTables = new address[](10);
    mapping(address => bool) internal _nonEqualAddressAddressTables;
}

contract LotteryWithCalldataReencode {
    function setAddressAddress(uint x) public { _addressAddressTables[0] = address(new LotteryWithCalldata()); }
    function setEqualAddressAddress(uint x) public { _addressAddressTables[1] = address(new LotteryWithCalldata()); _nonEqualAddressAddressTables[0] = true; }
    function equalAddressAddress(uint x) public view returns (bool success) { return _nonEqualAddressAddressTables[1]; }
}
