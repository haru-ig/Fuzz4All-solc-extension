pragma solidity ^0.8.0;
contract B {
    uint constant _uint64 = 9 * 1e10;
    uint constant _uint32 = 16**32;
    function mutated(uint) public pure returns (uint) {
      return ((uint(uint(uint(_uint64)) * 16) - (uint(uint(_uint64) * 10) ** 32) * 16) * 32) * A.mutated(_uint32);
    }
}

pragma solidity >=0.7.0 <0.8.0;

contract A {


    uint public a;


    constructor(uint _a) public {
        a = _a;
    }

}

pragma solidity >=0.7.0 <0.8.0;

contract B {


    uint public a;


    constructor(uint _a) public {
        a = _a;
    }


    function doSomething() public payable {
       a *= _uint64;
       a *= _uint64;
       a *= _uint64;
       a *= _uint64;
       a *= _uint64;
       a *= _uint64;
       a *= _uint64;
       a *= _uint64;
       a *= _uint64;
       a *= _uint64;
    }

}

pragma solidity >=0.7.0 <0.8.0;

contract C {

    /**
     * @notice This a local variable.
     * @dev
     *
     *
