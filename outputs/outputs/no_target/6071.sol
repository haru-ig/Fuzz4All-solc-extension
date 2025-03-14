pragma solidity ^0.8.0;
contract mod2 is Mod2 {
    function get(uint x) public {
        uint16 x16 = uint16(x);
        uint _x = get(x16);
    }
    function f1() public {
        uint16 y = 13;
        uint _y = get(y);
    }
}




contract Mod2Test {
    constructor() {
    }
    function test041() public pure {
        Mod2Test test = Mod2Test(0x9741a8D0a21A90541122B7B3f848E62F965232e6);
        test.f1();
    }
}
