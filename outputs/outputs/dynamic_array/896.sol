pragma solidity ^0.8.0;
contract NewSolidity {
        uint public x;

        constructor() {
             x = 2;
             x = 2;
        }

        function x() public view returns (uint) {
            return 7500;
        }

        function y() public view returns (uint) {
            return x;
        }
}
