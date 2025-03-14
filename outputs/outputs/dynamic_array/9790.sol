pragma solidity ^0.8.0;
contract SemanticTest {
    struct Data {
        uint x;
    }
    constructor() public {
        Data memory d;
        d.x = 64U;
        delete d.x;
        d.x = 1U;
    }

}
