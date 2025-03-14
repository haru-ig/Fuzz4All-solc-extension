pragma solidity ^0.8.0;
contract Mutated_1_3_13 {
    mapping(address => uint[]) private _valueMap;

    function addValue(uint32 key, uint value) public {
      _valueMap[address(this)][_valueMap[address(this)][key] + 1] = value;
    }
    function getValues(address addr) public view returns (uint[20] memory) {
      uint[] memory _tmp;
      _tmp = _valueMap[addr];
      uint[20] memory res;
      for (uint i=0; i<20; i++){
        res[i] = _tmp[i];
      }
      return res;
    }
}
