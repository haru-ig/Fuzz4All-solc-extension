pragma solidity ^0.8.0;
<fim_middle>library LibraryLib { function isBugger()
    public pure
        returns (bytes memory)
    { unchecked { return bytes1(15); } }
}
