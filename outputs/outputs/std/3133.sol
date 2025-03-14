pragma solidity ^0.8.0;
contract Array {
  using BasicMath for uint;
  uint[] storage storageArray;

  uint[] storage startingA;
  uint length;











  function getAndAdd() public returns (uint) {




    uint _value = length;
    storageArray.push(_value);
    startingA.push(_value.add(1));

    storageArray[_value] = _value + 1;
    return _value;
  }


  function getMin() public view returns (uint) {
    require(length > 0);
    uint minValue = storageArray[0];
    uint count = 1;
    for (uint j = 1; j < length;) {
      if (this.storageArray[j] < minValue) {
        minValue = this.storageArray[j];
        count = 0;
      } else count++;
      if (count == (length / 2)) {
        break;
      } else j++;
    }
    return minValue;
  }


  function getMax() public view returns (uint) {

    require(length > 0);
    uint maxValue = storageArray[0];
    uint count = 1;
    for (uint j = 1; j < length;) {
      if (this.storageArray[j] > maxValue) {
        maxValue = this.storageArray[j];
        count = 0;
      } else count++;
      if (count == (length / 2)) {
        break;
      } else j++;
    }
    return maxValue;
  }


  function getAndSum() public returns (uint) {



    uint _value = length;
    uint sum = storageArray[0];
    for (uint j = 1; j < length; j++){
      sum = sum.add(storageArray[j]);
