pragma solidity ^0.8.0;
contract Mutator {
    fallback(string memory x) {
    }
}

pragma solidity ^0.8.0;
contract FallbackComplex {
    string public message;

    function fallback(string memory _data) public returns (uint) {
        message = _data;
        return 0;
    }
}
