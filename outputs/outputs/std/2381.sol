pragma solidity ^0.8.0;
contract ModifiedArray
{
    uint256[] public arr;
    uint256 public arrayIdx = 2;

    function Array_append(uint256 _index, uint256  a) public {
      arr.push(a);
      arrayIdx = _index;
    }

    function Array_delete(uint256 _index) public pure {
      arrayIdx = _index;
      uint256 x = arr[arrayIdx];
      arr[arrayIdx] = 0;
      delete arr[_index];
      return x;
    }

    function Array_get(uint256 _index) public view returns (uint256 x) {
      return arr[_index];
    }
}

pragma solidity ^0.8.0;
contract MutatedArray
{
    uint256[] public arr;
    uint256 public arrayIdx = 2;

    function Array_append(uint256 _index, uint256  a) public {
      arr.push(a);
      arrayIdx = _index;
    }

    function Array_delete(uint256 _index) public pure {
      arrayIdx = _index;
      uint256 x = arr[arrayIdx];
      arr[arrayIdx] = 0;
      delete arr[_index];
      return x;
    }

    function Array_set(uint256 _index, uint256  b) public  pure   {
      arr[arrayIdx] = b;
    }

    function Array_get(uint256 _index) public view returns (uint256 x) {
      return arr[_index];
    }
}
