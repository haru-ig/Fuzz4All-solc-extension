pragma solidity ^0.8.0;
contract FallbackStorage {
    uint public s;
    function fallback() pure public {
       s = 5;
    }
}
contract AccessStorage {
    uint public s;
    bytes32 constant M = "hello";
    constructor(uint a) {
       s = address(new FallbackStorage).balance;
    }
    function getStorage() view public returns(bytes32) {
      return M;
    }
}
contract MutatedFallback is AccessStorage, MutatedStorage {
    constructor(uint a) {
       super.setStorage(1);
       super.setStorage(2);
    }
    function setStorage(uint newValue) {
       super.setStorage(newValue, { return: '0x' });
       super.setStorage(newValue);
    }
    function update(uint a) public {
        uint oldS = super.getStorage();
        a = oldS == 5? 2 : 1;
        super.update(a);
        super.setStorage(a);
        super.setStorage(0);
        super.setStorage(newValue);
    }
    function getStorage() view public returns(uint256) {
        uint ret = old();
        if (oldS == 5) {
           ret = 2;
        }
        return ret;
    }
    function old() pure public returns(uint) {
        bytes32 b = 1;
        return uint(b);
    }
}
