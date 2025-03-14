pragma solidity ^0.8.0;
contract Mutate72 {
    constructor () public {
        x = [0];
    }
    uint internal x;
    function getX() public view returns ( uint[] memory ) {
        return [x];
    }
}
#pragma solidity ^0.8.0;
contract Mutate71 {
    constructor () public {}
    uint[] internal x;
    uint [] memory g = [0];
    function getX() public view returns ( uint[] memory ) {
        return g;
    }
}
