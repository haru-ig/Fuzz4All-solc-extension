pragma solidity ^0.8.0;
contract BadCase8 {
    uint[3] a;
}









contract SimpleStorage {
    uint[4] x;

    constructor(uint _x) {
            x =  [_x];
    }

    function setX(uint _x) public {
            x =  [_x];
    }

    function getX() public view returns (uint){
            return x;
    }
}




contract BadCase9 {
    uint[2] a;
}
