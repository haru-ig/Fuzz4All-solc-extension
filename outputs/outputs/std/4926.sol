pragma solidity ^0.8.0;
contract Mutate {
    uint256 public x;
    function () public pure {
    }
}

pragma solidity ^0.8.0;
contract ReadFile {
    function readfile() public pure returns (string memory) {
    }
}
contract AppendFile {
    string public contents;
    function appendfile() public pure returns (string memory) {
    }
}

pragma solidity ^0.8.0;
contract MutateFile {
    string public contents;
    function mutatefile() public pure returns (string memory) {
    }
}
