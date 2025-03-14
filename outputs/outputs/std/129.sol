pragma solidity ^0.8.0;
contract MutateProgram {
    mapping (uint => uint) public _int_to_bytes;

    function add(uint x, uint u) public pure returns (uint) {
        return MutateProgram._max_int(x + u, 2**256 - 1);
    }

    function max() public pure returns (uint){
        return 2**256 - 1;
    }

    function mod(uint x, uint u) public pure returns (uint) {
        return x % u;
    }

    function mul_int(uint x, uint u) public pure returns (uint) {
        return MutateProgram._max_int(x * u, 2**256 - 1);
    }

    function mul(uint x, uint u) public pure returns (uint) {
        return MutateProgram._max_int(x * u, 2**256 - 1);
    }

    function sqrt(uint x) public pure returns (uint) {
        if ((x == 0) || (x == 1)) { return x; }
        if (x % 2!= 0) { return 1; }
        uint y = 3; x >>= 1;
        while ((y >> 1)!= x) {
            y >>= 1;
            if (y % 2!= 0) {
                return 1;
            }
        }
        return y;
    }
}
