pragma solidity ^0.8.0;
contract mutator84 {
    uint z = 2;
    constructor() {
      assembly {
        let store := mload(0)
        mstore(store, 3)
        z := mload(store)
      }
    } }


pragma solidity ^0.8.0;

library HelloLibrary {
    string public constant GREETING = "Hello";
    uint public constant VERSION = 2;

    function hello() public returns (string memory) {
        string memory hello = GREETING;
        uint version = VERSION;
        uint sum = 0;
        sum += version;
        HelloLibrary.HelloLibrary();
        sum += 2;
        return hello;
    }
}
contract mutator85 {
    uint x;
    uint y;
    uint z;

    constructor(uint i) {
      x = i;
      uint sum = 0;
      for(uint i = 0; i < 3; i++) sum += HelloLibrary.hello();
      y = sum;
    }

    uint getY() public returns(uint y){
      return y;
    }

    function getX() public returns(uint x){
      return x;
    }
 }
