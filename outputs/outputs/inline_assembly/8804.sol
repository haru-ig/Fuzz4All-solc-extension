pragma solidity ^0.8.0;
contract Test {

    using SafeMath for uint256;
    uint constant uint_One = 1;

    modifier test() {
      uint_One = uint_One.add(1);
      _;
    }

    modifier test2() public {
      uint_One = uint_One.sub(1);
      _;
    }

    function test3() private test() public test() {
      uint_One = uint_One.add(uint_One);
    }

    function test4() public pure test() {
      uint_One = uint_One.add(uint_One);
    }

    function test5() public {
      bool flag = true;
      uint_One = uint_One.sub(uint_One.sub(flag));
    }

    constructor() {

    }
}
