pragma solidity ^0.8.0;
contract Example {
        function a()
        private
        pure
        returns (uint256) {}

        function b(uint256 x)
        public
        payable
        pure
        returns (uint256) {
           return a() * x;
        }
}
