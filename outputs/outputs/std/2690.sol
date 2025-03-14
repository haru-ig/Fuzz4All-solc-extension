pragma solidity ^0.8.0;
contract Array { uint32[] public arr; }
pragma solidity ^0.8.0;
contract Convert { uint8 public x; }
pragma solidity ^0.8.0;
contract Math {
    function gcd(uint64 a, uint64 b) private pure returns (uint64) {
        require(b!= 0);}
    function toBase2(uint64 i) public pure returns (string memory) {
        require(i <= 1);
    }
}
pragma solidity ^0.8.0;
contract Memory { uint x; function get(); function set(uint); }
pragma solidity ^0.8.0;
contract Multiprecision {
    function gcd(uint x, uint y) public pure returns (uint) {
        uint z = x;
        while (x!= y && y!= 0) {
            uint q = x / y;
            x = y;
            y = q;}
        return z;}
}
contract Random { bytes32 seed; function new(uint); }
pragma solidity ^0.8.0;
contract Test { function test(uint x, uint y, uint z, bytes memory b, bool c) public returns (uint) { require(x > 0); } function test(uint x, uint y, uint z, bytes32 b, string memory c) public returns (uint) { require (c == "string"); } }
