pragma solidity ^0.8.0;
contract third4 {
    contract A {
        function test() public pure returns (bytes memory b) {
            return new bytes(2);
        }
    }
    contract B is A {
        function test() public pure returns (bytes memory b) {
            return (new third5()).get() ^ new A().test();
        }
    }
}
