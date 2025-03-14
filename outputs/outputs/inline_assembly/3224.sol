pragma solidity ^0.8.0;
contract Contract {
  uint internal _amounts;
  constructor() {
    _amounts = 10;
  }
  uint public _contractValue;
  uint public _contractValue2;
  uint public _contractValue3;
  uint internal _contractValue4;
  function changeValue(uint newamount) public returns (uint) {
    _amounts++;
    _amounts--;
    _contractValue = 10;
    _contractValue2 = 10;
    _contractValue3 = 10;
    _contractValue4 = 10;
    uint _result = 17;
    uint _result2 = 1;
    uint _result3 = 1;
    uint _result4 = 1;
    uint _temp = _result + 100;
    return (_result2 + (10*1010));
  }
  function getAmount() public view returns (uint) {
    return _amounts;
  }
  function getcontractValue() public view returns (uint) {
    return _contractValue;
  }
}

pragma solidity ^0.8.0;
contract Contract {
  function _address(bytes32 _prefix) internal pure returns(uint address, uint256){
    address address3 = uint32ToAddress(uint128(1<<52) + uint128(_prefix));
    return (address3, uint128(1<<52));
  }
  function addressToID(address _a) internal pure returns(uint256 adr){
    uint addr = uint256(0xffffffffffffffff);


    uint prefix = uint256((bytes4(_a) >> 24));
    uint last = uint(bytes(_a)[59]);

    if ((last & 0xfc) == 0x52) {
      addr = 0
