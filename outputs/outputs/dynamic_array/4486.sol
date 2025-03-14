pragma solidity ^0.8.0;
contract NewPrevious { function testNew() public returns (bytes memory) {
} }
contract TestPrevious {
    function test() public returns (bytes memory) {
        return new NewPrevious().testNew().testPrevious();
    }
}
