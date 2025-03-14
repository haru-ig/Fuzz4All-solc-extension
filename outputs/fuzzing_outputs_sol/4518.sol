pragma solidity ^0.8.0;
contract SemanticDifferent2 {
    function get(uint z, uint w) public {
        uint x = 1;
        uint y = 3;
        uint x1 = x * z;
        uint x2 = z;
        uint x3 = x * (z + y);
    }
    mapping(uint => uint) p = new mapping(uint => uint);
    function get() public pure {
    }
}

pragma solidity ^0.8.0;
contract SemanticDifferent3 {
    function get(uint z) public {
        uint x = 1;
        uint y = 3;
        uint x1 = x * z;
        uint x2 = z;
        uint x3 = x * (z + y);
        get();
    }
    function get() public pure {}
}

pragma solidity ^0.8.0;
contract SemanticDifferent4 {
    function get(uint z, uint w) public {
        uint x = 1;
        uint y = 3;
        uint x1 = x * z;
        uint x2 = z;
        uint x3 = x * (z + y);
    }
    function get() public pure {
    }
    function transfer(address recipient, uint tokenAmount) public pure {
        uint tokenBalance = tokenAmount + msg.value;
        delete p[msg.sender];
    }
}

pragma solidity ^0.8.0;
contract Caller {
    SemanticDifferent unmodified;
    SemanticDifferent2 mutated;
    SemanticDifferent3 contractWithFallbackFunction;
    SemanticDifferent4 mutated2;

    constructor() {
        unmodified = new SemanticDifferent();
        mutated = new SemanticDifferent2();
        contractWithFallbackFunction = new SemanticDifferent3();
        mutated2 = new SemanticDifferent4();
    }

    fallback() external returns(uint) {



        require(msg.data[0] == 0x60);
        require
