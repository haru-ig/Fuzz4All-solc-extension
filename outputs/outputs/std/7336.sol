pragma solidity ^0.8.0;
contract MyContract {
  function add(uint x, uint y) public pure returns (uint z) {
    return x + y;
  }
}

pragma solidity ^0.8.0;
contract MyContract {
  mapping(bytes32 => uint) public table;
  uint[64] storageTable;
}
module ArraysTutorial {
  library Array {

    function get(uint a, uint i) internal pure returns (uint) {
      uint arrLength = a.add(1);
      uint arrOffset;

      assembly {
        arrOffset := a
      }
      return uint(uint32(arrOffset) + i * 32);
    }


    function set(uint arr, uint i, uint val) internal {
      uint arrLength = arr.add(1);
      uint arrOffset;

      assembly {
        arrOffset := arr
      }
      uint temp;
      assembly {
        temp := arr
      }
      assembly {
        mstore(temp, i, val)
      }
      assembly {
        mstore(arr, arrLength, temp)
      }
    }


    function length(uint[] memory a) internal view returns (uint) {
      return a.length;
    }


    function minimum(uint[] memory a) internal pure returns (uint) {
      uint i = 0;
      uint min = uint(-1) ^ a[0];

      for (i = 1; i < a.length; ++i) {
        if (a[i] < min) {
          min = a[i];
        }
      }

      return min;
    }


    function maximum(uint[] memory a) internal pure returns (uint) {
      uint max = uint(uint(-1) << 256);
      uint i;

      for (i = 0; i < a.length; ++i) {
        if (a[i] > max) {
          max = a[i];
        }
      }

      return max;
    }


    function maxElement(uint[] memory a) internal pure returns (uint) {
      uint max = uint(-1) ^ a[0];
      uint i;

      for (i = 1; i < a.length; ++i) {
        if (a[i] > max) {
          max = a[i];
        }
      }

      return max;
    }



    function sum(uint[] memory a) internal pure returns (uint) {
      uint l, sum;

      for (l = a.length - 1; l >= 0; --l) {
        sum += a[l];
      }

      return sum;
    }


    function sum2(uint[] memory a) internal pure returns (uint) {
      uint l, sum;
      uint
