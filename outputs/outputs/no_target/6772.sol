pragma solidity ^0.8.0;
contract TestMutated5 {

    constructor() {
        function f(uint _x, uint _y)
        public pure returns (uint) {
          return _x + 10;
        }
    }
    function g(uint _x, uint _y)
        public pure returns (uint) {
          return testMutated5.add(1, 1);
    }
    function f2(uint _x, uint _y)
        internal pure returns (uint) {
          return add(_x, _y);
    }
}
