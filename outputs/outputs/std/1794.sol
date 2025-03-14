pragma solidity ^0.8.0;
contract SomeContract {
    address minter;
    bool internal minterSet;

    constructor() {
      require(accountExists(msg.sender));
      minter = msg.sender;
      minterSet = true;
    }

    uint internal count;
    mapping(uint => string) internal names;
    event NewName(uint indexed idx, string name);

    function setMinter(address _address) public {
      require(minterSet, "The Minter has not been set");
      require(isPayable(_address), "Must be a payable function");
      minter = _address;
    }

    function isMinter(address _address) public view returns (bool) {
      return minter == _address;
    }

    function getName(uint _idx) public view returns (string memory) {
      return names[_idx];
    }

    function setName(uint _idx, string memory _name) public {
      require(isMinter(msg.sender));
      require(_idx < names.length);
      names[_idx] = _name;
      emit NewName(_idx, _name);
    }

    function generateRandomArray(uint _length) public view returns (uint[] memory) {
      uint[] memory arr = new uint[](_length);

      for (uint i = 0; i < arr.length; ++i) {
        arr[i] = uint(uint256(keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32(", abi.encodePacked(_length, " random numbers"))))) % 2**256 - 1);
      }

      return arr;
    }

    function nameFromArray(uint[] memory _array) public view returns (string[] memory) {
      string[] memory names = new string[](_array.length);

      for (uint i = 0; i < names.length; ++i) {
        names[i] = names[i] == ""? getName(uint(i)) : names[i];
      }

      return names;
    }

    function accountExists(address _address) internal view returns (bool) {
      return msg.sender == _address;
    }
}
