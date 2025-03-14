pragma solidity ^0.8.0;
contract C {

    function a() public pure returns (uint) { uint x; uint y; }
    function b() public pure returns (uint) { uint x; uint y; }
}

pragma solidity ^0.8.0;
contract C {
    function a(address x, bool flag) public pure returns (uint) { uint x; uint y; }
    function a(address x, bool flag, int z) public pure returns (uint) { uint x; uint y; }
    function b(address x, bool flag, uint p2) public pure returns (uint) { uint x; uint y; }
}
