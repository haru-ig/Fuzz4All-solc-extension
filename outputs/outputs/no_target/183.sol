pragma solidity ^0.8.0;
contract Test2 {
    uint public x = 2;
    uint public z = uint(1);
    function set(uint y) public { x = y; }
    function get() public view returns (uint, uint){ return (x, uint0(z)); }
}
contract Test3 {
    constructor() public {
        uint[2] memory mem1;
        require((mem1)[0] == 0);
    }
}
contract Test4{
    function get() public { return x; }
    uint constant x = 1;
}
pragma solidity ^0.8.0;
contract Test5 {
    function get(address x,address y) public { return x; }
    uint constant x = 1;
}
