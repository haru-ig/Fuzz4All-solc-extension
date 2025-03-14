pragma solidity ^0.8.0;
contract MutatedAbiMutations_v22 {


    uint256 public value;
    function test (uint256) public {
    }

    function test2 (uint256) public {
      value = 1;
      value = 2;
      value = 3;
    }

    function test3 (uint256) public {
      value0 = 1;
      value0 =2;
      value0 =3;
    }

    function test4 (uint256) public {
      value3 = 1;
      value3 = 2;
      value3 = 3;
    }

    function test5 (uint256) public {
      value2 = 1;
      value2 = 2;
      value2 = 3;
    }
}
