pragma solidity ^0.8.0;
contract Convert {
  function f(address x) public pure {

  }
}

pragma solidity ^0.8.0;
contract Convert {
  function f(function(address) pure) public pure returns (address) {

  }
}

pragma solidity ^0.8.0;
contract Math {
  function f(uint x) public pure returns (uint) {

  }
}
contract Multiprecision {
  function f(uint) public pure returns (uint x) {

  }
  function f(int) public pure returns (int x) {

  }
  function f(uint256) public pure returns (uint) {

  }
  function f(int256) public pure returns (int) {

  }
}
pragma solidity ^0.8.0;
contract Memory {


}
pragma solidity ^0.8.0;
contract Math {
  function f(uint memory x) public pure {

  }
}

pragma solidity ^0.8.0;
contract Math {
  function f(uint y) public pure {

  }
}
pragma solidity ^0.8.0;
contract Random {
  struct RandomState {
    uint r;
    uint seed;
    uint rand_state[32];
  }

  RandomState _random;


  function Random(uint seed) {
    _random.r = 0;
    _random.seed = seed;

    for (uint index = 0; index < 32; index++) {


      uint rand_state = uint(uint(keccak256(abi.encodePacked(block.timestamp, index)))) + uint(uint(keccak256(abi.encodePacked(abi.encodePacked(seed, index))))));
      _random.rand_state[index] = rand_state;
    }


    _random.r = uint(uint(keccak256(abi.encodePacked(_random, seed))));
  }


  function rand(uint min) public view returns (uint) {

    return (uint(_random.r) >> 32) % min;
  }


  function rand(uint max) public view returns (uint) {
