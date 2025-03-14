pragma solidity ^0.8.0;
contract Mutated_5_2 {
    uint8 x;
    function getx() public view returns(uint8) {
        return x;
    }
    function setx(uint8 y) public {
        x = y;
    }
    function setx2(uint8 y) public {
        x = 47 + y;
    }
}

pragma solidity ^0.8.0;
contract Mutated_5_1 {
    uint8 x;
    constructor(uint8 a) public {
        x = 88/4;
    }
}
