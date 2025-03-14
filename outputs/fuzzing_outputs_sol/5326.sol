pragma solidity ^0.8.0;

contract Base {
        function foo() public pure returns (address) {
                return address(this);
        }

        function bar() public pure returns (address payable) {
                payable(address(this));
        }

        function baz() public pure returns (address payable) {
                payable payableTo(address(this));
        }

        function quux() public pure returns (address payable) {
                payable payableTo(address(this));
        }

        function barTo(address payable to) public pure returns (address payable) {
                return to;
        }

        function quuxTo(address payable to) public pure returns (address payable) {
                return to;
        }

        function barFrom() public pure returns (address payable) {
                address payableFrom = payable(address(this));
                return from(from(from(from(from(from(from(from(from(from(from(from(from(address(this))))))))))))));
        }
}
