pragma solidity ^0.8.0;
contract SemanticallyNotEquivalent3 is SemanticallyNotEquivalent1 {
    uint32 x;
    function f(uint32 x) public returns (uint32){
        x = a + 3 - b;
        return x;
    }
}
contract SemanticallyNotEquivalent1 {
    uint8 x;
    function f(uint8 x) public returns (uint8){
        x = 3;
        return x;
    }
}
contract SemanticallyNotEquivalent0 {
    uint8 x;
    function f(uint8 x) public returns (uint8){
        x = 5;
        return x;
    }
}
pragma solidity ^0.8.0;
contract SemanticallyNotEquivalent4 is SemanticallyNotEquivalent3 {
    uint32 a;
    uint8 x;
    uint32 x_1;
    uint8 x_2;
    uint32 h;
    function f(uint32 x) public returns (uint32){
        x = a + 3 - b;
        x_1 = 3 + 5;
        x_2 = 5 + 3;
        return f(4);
    }
}
contract SemanticallyNotEquivalent {

    uint32 a;
    uint32 b;

    function f(uint32 x) public returns (uint32){

        x = a + 3 - b;
        return 4;
    }
}
