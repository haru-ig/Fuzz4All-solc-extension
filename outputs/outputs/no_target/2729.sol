pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutacted_sn6096 { uint public x; function  mutate2(uint) public { x = x / uint256(2000); } }



pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

contract Sample {
  function s1() public { }
  function s2() public { }
  function s3() public { }
}

contract S1 is Sample {

   function s2() public {
      x = 0;
    }
}

contract S2 is Sample {

  uint[16] public x;

   function s3(uint y) public {
      x[y] = 0;
    }

}
