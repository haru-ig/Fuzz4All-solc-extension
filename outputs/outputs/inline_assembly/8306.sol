pragma solidity ^0.8.0;
contract InlineAssembly7 {
    constructor() {
        string memory s = "1";
        assembly {
            s := add(s, s)
        }
    }
    function() external pure {
        string memory s = "1";
    }
}
