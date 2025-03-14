pragma solidity ^0.8.0;
contract Baz {
    function Bar(string memory s) public pure returns (uint8) {
        return 255;
    }
    function Bar(uint8 i) public pure returns (string memory) {
        return "foo";
    }
}
