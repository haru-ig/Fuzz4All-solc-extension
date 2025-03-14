pragma solidity ^0.8.0;
contract C {
    uint a;
    constructor(uint _a) public {
      a = _a;
    }
    function modify() public returns(uint) {
        return uint(a);
     }
}
