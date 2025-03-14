pragma solidity ^0.8.0;
contract InlineAssembly8 {
    function test() public {
        string memory e = "1";
        bytes memory b = e.encodePacked();
        for (uint i = 0; i < b.length; i++) {
            e[i] += e[i];
        }
    }
}
