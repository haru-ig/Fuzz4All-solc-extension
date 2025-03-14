pragma solidity ^0.8.0;

contract c {
  uint[2] memory memoryA;

  function test() pure public {
    memoryA[0] = 2;
  }

  function set () public {
    memoryA[0] = 3;
  }

  function get() public pure returns (uint) {
    return memoryA[0];
  }
}



$solc --force --combined-json abi,sol,size l.sol -o./l.json
$solc --force --combined-json abi,sol,size c.sol -o./c.json


$solc --force --combined-json abi,sol,size l.sol -o./l.json
$solc --force --combined-json abi,sol,size c.sol -o./c.json
