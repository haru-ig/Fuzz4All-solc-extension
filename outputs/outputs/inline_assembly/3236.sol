pragma solidity ^0.8.0;
contract Mutate {
  uint public _contractValue;
  uint internal _amounts;
  uint internal _amounts2;
  uint internal _amounts3;
  address[] public _addresses;



  uint[] public _array;
  uint internal _arrayValue;
  uint internal _arrayValue2;
  uint internal _arrayValue3;
  function ChangeArrayValue(uint v1,uint v2,uint v3) public returns (uint) {
    uint result=_arrayValue+v1+v2+v3;
    _arrayValue=result;
    return result;
   }
}
contract Mutate {
    uint public _contractValue;
    uint public _amounts;
    uint[] public _array;
    constructor() {
        _array[0]=msg.sender;
    }
    function changeAmount(uint v1) public returns (uint) {
        uint result=_amounts + v1;
        _amounts=result;
        return result;
    }
}
