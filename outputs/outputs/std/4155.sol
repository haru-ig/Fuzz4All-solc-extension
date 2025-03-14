pragma solidity ^0.8.0;
contract Array2 {
  uint[100][100] array;
}
contract Array3
{

  Address private _owner;
  address public user;

  constructor () public {
      _owner = msg.sender;
  }


  modifier onlyOwner() {
    require(_owner == msg.sender,'Only the owner is allowed to call this function');
    _;
  }

  function getUserAddress() public constant returns (address) {
      return user;
  }

  function changeUserAddress(address newaddress) public onlyOwner {
      user = newaddress;
  }


  modifier onlyAdmin() {
      require(msg.sender == _owner, 'Caller must be the owner or another admin');
      _;
  }


  modifier onlyPublic(address account) {
      require(block.number>=10000000200000, 'This call must not come from a public function yet');
      require(!_blockNumber[account], 'This account has already been used');
      _;
  }


  modifier onlyOneBlock() {
       require(_blockNumber[msg.sender]==false,'This function has multiple blocks');
       _blockNumber[msg.sender]=true;
       _;
  }


  modifier notUndefined(uint256 x) {
       require(x >= 0);
       _;
  }

  uint256[100][100] _storageArray;
  uint256 _storageCounter;


  function _set(uint256 row, uint256 column, uint256 value) internal {
    require(row < 100 && column < 100);
    _storageArray[row][column] = value;
  }


  function _get(uint256 row, uint256 column) public view returns (uint256) {
    require(row < 100 && column < 100);
    return _storageArray[row][column];
  }


  mapping(address => uint256) _blockNumber;

  function getBlockNumberForAccount() public view returns (uint256) {
    return _blockNumber[msg.sender];
  }
}
