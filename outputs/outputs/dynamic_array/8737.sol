pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity57_dynamic_75 {
    uint32[] public m;
}



pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity57_dynamic_76 {
    struct Complex {
        uint32 foo;
        uint32 bar;
        uint32 baz;

        uint32 fred;

        uint32 gentleman;
    }

    struct ComplexExample {
        uint32 a;
        uint32 b;
        uint32 c;

        mapping(uint32 => uint32) d;

        Complex c1;
        Complex c2;
        Complex c3;
        Complex c4;
        Complex c5;
        Complex c6;

        uint8 e;
    }

    ComplexExample a;

    mapping(uint32 => uint32) d;

    uint8 e;
}


pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity57_bytes32 {
    uint32 b = 17;
    string g = "Test";

    bytes32 v = msg.sender;


    bytes public w;

    constructor() {
        w = "First";
        for (uint32 i = 0; i < 10; i++) {
            w = w + w;
        }
        w = w + w;
    }

    function f3(uint32 i) public {
        v = i;
    }

    function setBytes32(bytes32 b) public {
        require(b < b);
        require(msg.sender == W345);
        v = b;
        if (v!= msg.sender)
            revert();
    }





    function setBytes32Var(address varg) public {
        require(b < b);
        v = varg;
    }

    function() external payable {
        setBytes32Var(msg.sender);
        w = "Third";
    }
}
