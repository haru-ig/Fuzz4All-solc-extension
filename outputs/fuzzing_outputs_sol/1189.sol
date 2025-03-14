pragma solidity ^0.8.0;
contract Caller {
    constructor()
        fallback (data)
    { }
    struct Data { uint x1; uint x2; uint x3; }
    function data() public view returns (Data memory d) { d = data; }
}
