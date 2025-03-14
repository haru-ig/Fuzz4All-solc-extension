pragma solidity ^0.8.0;
contract Solidity {
  uint256 public constant myConst = 99;
  uint256 public constant newV = 8;
  uint256 public constant iMax = 15;
  uint256 public constant c = 300;
  uint256 public i;
  bytes private constant _hello = "Hello world!";

  function test() public pure {
    assert(keccak256(abi.encodePacked(_hello)) == keccak256(abi.encodePacked("Hello world!")));
    i = i > 15? iMax : i + 1;
  }



  function doSomething() public {
    uint256 i;


    assert(keccak256(abi.encodePacked("1")) == keccak256(abi.encodePacked(1)));
    i += newV;


    assembly {
      newV := 0x30000000000000 + newV + newV
    }
    i += myConst;


    assembly {
      myConst := 0x3000000000000048 + myConst + myConst
    }

    {



      uint256 result = c > 15
      ? i
        : 17;
      assert(result == newV);
    }


    uint256 resC;
    assembly {
      resC := c
    }
    assert(resC < c);
  }
}
