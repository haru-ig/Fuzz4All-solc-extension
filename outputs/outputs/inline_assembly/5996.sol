pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssemblyExample3 {
    string public str;
    function main() public view {
        str = "test";
    }
}
contract SemanticallyEquivalentAssemblyExample4 {
    string public str;
    constructor() {
        str = "test";
    }
    function main() public {
    }
}
