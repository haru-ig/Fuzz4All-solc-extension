pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
    uint32 a;
    function f(uint32 x) public returns (uint32){
        return a = 5;
    }
}
pragma solidity ^0.8.2;
contract SemanticallyEquivalent4 {
    address constant constant A = 0x79fb230463807a95ab44b76501266c2d50cf46af;
    address constant constant B = 0x5504fa50c3bf5d82037777ab439d2ac9e422659c;
    bool constant constant C = false;
    uint32 constant constant D = 0xffffffff;
    uint32 constant constant E = 8;
    uint32 constant constant A1 = 9;
    uint32 constant constant C4 = 0;
    function f(uint32 x) public returns (uint32){
        return 5;
    }
    function g() public returns (uint32){
        return 8;
    }
}
pragma solidity ^0.8.2;



contract Library3 {
    uint32 constant a = 5;
    uint32 constant b = 2147483648;
    uint32 constant v;
    function f(uint32 x) public returns (uint32){
        return v = 5;
    }
    function f() public view returns (uint32, uint32){
        return (5, 2147483648);
    }
    function g(uint32 x) public returns (uint32){
        return v = 2147483648;
    }
}
pragma solidity ^0.8.0;
contract SemanticallyEquivalent2 {
    uint32 a;
    function f(uint32 x) public returns (uint32){
        return a = 5;
    }
}
