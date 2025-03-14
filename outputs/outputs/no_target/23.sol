pragma solidity ^0.8.0;
contract HelloWorld {
    function sayHelloWorld() public pure returns (string memory) {
        return "The World";
    }
    modifier greetings() {
        bytes memory b = msg.data;
        bytes32 c = abi.encodePacked(msg.data);
        bytes4 d = abi.encodePacked(msg.data);
        bytes5 e = abi.encodePacked(msg.data);
        uint8 f = bytes32(msg.data);
        address g = bytes5(msg.data);
        assembly {
            assert(msg.data.* > 0)
        }
    }
}
pragma solidity ^0.8.0;
contract HelloWorld {
    function sayHelloWorld() public pure returns (string memory) {
        return "The World";
    }
    modifier greetings() {
        bytes memory b = msg.data;
        bytes32 c = abi.encodePacked(msg.data);
        bytes4 d = abi.encodePacked(msg.data);
        bytes5 e = abi.encodePacked(msg.data);
        uint8 f = bytes32(msg.data);
        address g = bytes5(msg.data);
        assembly {
            assert(msg.data.* > 0)
        }
    }
    function testHelloWorld() public pure returns (string memory) {
        return greetings() + "!";
    }
    function testHelloWorld1() public view returns (string memory) {
        return greetings() + testHelloWorld() + "!";
    }
}
