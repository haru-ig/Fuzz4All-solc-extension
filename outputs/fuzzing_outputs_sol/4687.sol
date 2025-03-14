pragma solidity ^0.8.0;
contract Mutator3a {
    string greeting() public pure returns (string memory) {
        return "Hello";
    }

    string constant greetingA = "Hello";
    function shouldBe() public pure returns (string memory) {
        return greetingA;
    }
}
contract Mutator3b {
    string greeting() public pure returns (string memory) {
        return "Hello";
    }

    function shouldBe() public pure returns (string memory) {
        return greeting();
    }
}
