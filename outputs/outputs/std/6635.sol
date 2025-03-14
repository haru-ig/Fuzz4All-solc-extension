pragma solidity ^0.8.0;
contract Mutate68 {
    constructor () public {}
    uint8 y;
    function setY( uint8 _y ) public {
        y = _y;
        uint8 x;
        x = 1;
        x = x + 1;
    }
}
contract Mutate69 {
    constructor () public {}
    uint8 public y;
    constructor(uint8 _y) public {
        y = _y;
    }
    uint8 y;
    function setY( uint8 _y ) public {
        y = _y;
        uint8 x;
        x = 1;
        x = x + 1;
        x = x + x;
    }
}
contract Mutate71{
    constructor () public {}
    uint8 public y;
    function setY( uint8 _y ) public {
        y = _y;
    }
    constructor(uint8 _y) public {
        y = _y;
    }
    uint8 public y;
    function setY( uint8 _y ) public {
        y = _y;
        uint8 x;
        x = 1;
        x = x + 1;
        x = x + x;
    }
}
contract Mutate73 {
    constructor () public {}
    function setY( uint8 _y) public {
        return;
    }
    uint8 function() public pure returns (uint8){return 1;}
}
