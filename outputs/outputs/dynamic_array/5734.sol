pragma solidity ^0.8.0;
library Test387Library {
    event LogEvent(string messageFromLibrary);
    struct Struct { string val; }
    function callLibraryMethod() internal pure {
        (bool success, bytes memory data) = address(this).call{value: 1000000000000}(abi.encodeWithSelector(bytes4(keccak256(tupleHash(abi.encodePacked(struct, Test387Library.Struct(uint(0x40)))))), (uint(1))));
        require(success, "Failed to call library function");
        emit LogEvent("Log from library");
    }
}
