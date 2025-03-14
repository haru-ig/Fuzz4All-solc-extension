pragma solidity ^0.8.0;
contract Mutate72 {
    uint8 y;
    constructor () {
        y = 0;
        uint8 x = 1;
        uint8 z = 21;
        uint8 w = 21;
        y &= z;
        y &= (x+w);
        y &= (x-w);
        y &= (-x-y);
    }
    function setY( uint8 _y ) public {
        y = _y;
    }
    function getY( ) public view returns(uint8 _y){
        return  y;
    }
}

pragma solidity ^0.8.0;
contract Mutate73 {
    uint8 x = 1;
    function f( ) public returns(uint8) {
        return x;
    }
}
pragma solidity ^0.8.0;
