pragma solidity ^0.8.0;
contract MutableBc5 {
    uint private variableA = 0;


    function test() public {
        uint[1] memory var1;
        uint tempVarA;
    }
}

pragma solidity ^0.8.0;
contract MutableBc5 {
    uint private variableA = 0;


    function test() pure public {
        uint[1] memory var1;
        uint tempVarA;
    }
}
