pragma solidity ^0.8.0;
contract CallMutablility {
  uint public value;
  bytes[] public datas;
  function setDatas( bytes[] memory _datas) {
    datas = _datas;
  }

}
