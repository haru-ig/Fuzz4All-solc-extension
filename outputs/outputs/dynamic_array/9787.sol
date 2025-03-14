pragma solidity ^0.8.0;
contract SemanticTest {
    struct Data {
        uint8 x;
    }
    function fTest(Data memory d) public pure {
        uint8 y;
        y = d.x;
        y = 255;
        d.x = 0;
        y = d.x;
    }
}
pragma solidity ^0.7.0;
contract SemanticTest {
    struct Data {
        bool a;
        bytes7 b;
    }
    function fTest(Data memory d) public pure {
        uint8 y;
        bytes memory bs;
        d.a = false;
        d.b = 0xFF;
        y = d.b;
        d.b = 67;
        y = d.b;
        d.b = bytes7("");
        y = d.b;
    }
}
