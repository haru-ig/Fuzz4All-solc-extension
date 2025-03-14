pragma solidity ^0.8.0;
contract SemanticallyNotEquivalent13 {
    uint32 a;
    function f(uint32 x) public returns (uint32){
        return a + x;
    }
}

pragma solidity ^0.8.0;
contract SemanticallyNotEquivalent14 {
    uint32 a;
    function f(uint32 x) public returns (uint32){
        return a + x;
    }
}

pragma solidity ^0.8.0;
contract SemanticallyNotEquivalent15 {
    uint32 a;
    function f(uint32 x) public returns (uint32){
        return a + x;
    }
}
pragma solidity ^0.8.0;
contract SemanticallyNotEquivalent16 {
    string constant a = "Hello, World!";
}
