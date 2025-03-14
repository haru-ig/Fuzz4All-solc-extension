pragma solidity ^0.8.0;
contract G {
    uint8 i;
    uint8 x;
    function someFunc(uint8 a, uint8 b) public {
        i = a + i;
        x = b + x;
        x = b + x;
        x = b + x;
        x = b + x;
    }
}
pragma solidity >=0.4.22 <=0.8.0;
contract G {
    bool i;
    uint8 x;
    function someFunc(uint8 a, uint8 b) public {
        i = a + i;
        x = b + x;
        x = b + x;
        x = b + x;
        x = b + x;
    }
}

pragma solidity >=0.4.21 <0.8.0;
contract G {
    uint8 i;
    uint8 x;
    function someFunc(uint8 a, uint8 b) public {
        i = a + i;
        x = b + x;
        x = b + x;
        x = b + x;
        x = b + x;
    }
}
