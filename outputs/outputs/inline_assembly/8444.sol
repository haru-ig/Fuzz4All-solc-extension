pragma solidity ^0.8.0;
library Test {
    uint var0;
    function test() public view returns(uint) {
        return  var0;
    }
}
contract Check {
    function check(bool a, uint x) public view returns(uint) {
      if(a == true) {
        return Test.test();
      }
      else {
        return x;
      }
    }
}






pragma solidity ^0.8.0;


function Test2() {
  var0 = 15;
}
function f(address dest, bytes memory data)public pure returns(bytes memory) {
    return abi.decode(
      keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32", keccak256(data), "\x1cEthereum Signed Message:\n32")) ^ Test2(),
      (bytes)
    );
  }

pragma solidity ^0.8.0;
contract UseLibrary {
    constructor() public {}
    function test() public pure returns(uint) {
      return Test2().test();
    }
}
