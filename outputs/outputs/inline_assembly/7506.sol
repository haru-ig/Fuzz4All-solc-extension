pragma solidity ^0.8.0;
contract Example {
    uint x = 0;
    uint y;
    uint z;
    uint _y;
    uint[4] array;
    function read(uint idx) public { array[idx] = _y; }
}

pragma solidity ^0.8.0;
contract Example {
    uint x = 0;
    uint y;
    uint z;
    uint _y;
    uint[10] array;
    constructor() public  {
        uint _y = array[3];
        uint _y = array[6];
        uint _y = array[9];
        uint _y = array[12];
        uint _y = array[0];
    }
    function read(uint idx) public { array[idx] = _y; }
}
