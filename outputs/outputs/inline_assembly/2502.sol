pragma solidity ^0.8.0;
contract Comp2 {

    uint _a;

    constructor(uint a) {
      _a = a;
    }

    function increase() public {
      _a += 1;
    }

    function increase2() public {
      _a += 2;
    }

    function increase3() public {
      _a += 3;
    }
}
contract Comp2 {
      uint _a;

    constructor(uint a) {
      _a = a;
    }

    function increase() public onlyOwner {
      _a += 1;
    }

    function increase2() public onlyOwner {
      _a += 2;
    }

    function increase3() public {
      _a += 3;
    }
}
