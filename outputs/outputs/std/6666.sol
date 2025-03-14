pragma solidity ^0.8.0;
contract Mutate70 {
    uint y;
    constructor() public {
        y = 4;
    }
    function getY() public view returns ( uint ) {
        return y;
    }
}
