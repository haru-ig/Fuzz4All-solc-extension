pragma solidity ^0.8.0;
contract ArrayWithoutMethodsAndSemantic {
  uint arr = uint[](address[](1)[3]);
}
contract ArrayWithMethods {
  uint arr = uint[](address(0x0))[1];
}
contract ArrayWithSemantic {
  uint[] public arr;

  function getValue() public view returns (uint) {
    return arr[0];
  }
}
contract ArrayWithoutMethodsAndSemantic {
}
contract MathWithMethods {
  function getValue() public pure returns (uint) {
    return div(1000, 3);
  }
}
contract MathWithSemantic {
  function getValue() public view returns (uint) {
    uint[3] storage storage_array = arr;
    return div(storage_array[0], 3);
  }

  function setVal(uint _val) public view {}
}
contract MultiprecisionWithMethods {
  struct Storage {
    uint _sum1;

    uint _sum2;

    bool _in_a_negative;
  }

  function add2x1b() public view returns (Storage storage_output, uint) {
    uint sum_pre1 = (mul(10)).add(((mul(20))).mul(100)));
    uint sum_pre2 = (((mul(10)).add(10)).mul(11)).add(mul(22));
    if (_sum2 < mul(10)) _in_a_negative = true;
    else _in_a_negative = false;
    return (storage_output, sum(sum_pre1, sum_pre2));
  }

  function addMultiprecision(Storage storage_output) public view returns (uint) {
    uint[2] storage storage_array = arr;
    if (mul(100)!= storage_array[0]) {
      uint[2] storage storage_array1 = arr;
      return (div(mul(100), storage_array[0]));
    } else {
      uint[2] storage storage_array2 = arr;
      uint[2] storage storage_array3 = arr;
      return div(mul(100), storage_array3[0]);
    }
  }

  function mul3b(uint x) public view {
    if (x == 0) {
      return;
    }
  }
}
contract MultiprecisionWithSemantic {
  uint[247] arr = uint[247](uint[](uint[](uint[](uint[](uint[](uint[](uint[](uint[](uint[](uint[](uint[](uint[](uint[](uint[](uint[](uint[](uint[](uint[](uint[](uint[789];<fim_middle>contract ArrayWithMethods {
  uint[3][4] arr = uint[3][4](uint[](uint[](300), uint[](320), uint[](110), uint[](90)));
}
contract ArrayWithoutMethodsAndSemantic {
  uint[1] arr = uint[](1)[1];
}
contract Array
