pragma solidity ^0.8.0;
contract Mutater25 {
    address[] public array;
    function getAddresses(address _address) public view returns (address[] memory) {
        return this.getAdress(_address);
    }
    function getAdress(address _address) public view returns (address[] memory) {
        return _address == address(0)?array:new address[](3);
    }
    function addAddresses(address[] memory _addresses) public returns (address[] memory) {
        array = _addresses;
        return new address[](3);
    }
    function addAdress(address _address) public returns (address[] memory) {
        array.push(_address);
        return _address == array[2]?new address[](3):new address[](2);
    }
}
contract Mutater25 {
  address[] public array;
  function getAddresses(address _address) public view returns (address[] memory) {
      return this.array;
  }
  function getAdress(address _address) public view returns (address[] memory) {
      return _address == address(0)?array:new address[](3);
  }
  function addAddresses(address[] memory _addresses) public returns (address[] memory) {
      array = _addresses;
      return new address[](3);
  }
  function addAdress(address _address) public returns (address[] memory) {
      array.push(_address);
      return _address == array[2]?new address[](3):new address[](2);
  }
}
