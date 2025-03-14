pragma solidity ^0.8.0;
contract Mutated2_e {
    bytes33 constant HEREDOC_TYPE = abi.decode(abi.encodePacked("a", "ab", "abc"), (bytes33[4])[](0, 1, 2, 3));
}

pragma solidity ^0.8.0;
contract Mutated3_e {
    bytes33 constant HEREDOC_TYPE = abi.decode(abi.encodePacked("a", "ab", "abc"), (bytes33[4])[](0, 1, 2, 3));
    bytes33 constant HEREDOC_TYPE = abi.decode(abi.encodePacked("a"), (bytes33[4])[](0, 1, 2, 3));
}

pragma solidity ^0.8.0;
