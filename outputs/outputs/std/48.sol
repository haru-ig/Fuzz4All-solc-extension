pragma solidity ^0.8.0;
contract Convert {
    function _stringUint(string memory str) pure public returns (uint) {
    }
    function _to_uint(int x) pure public returns (uint) {
    }
}
pragma solidity ^0.8.0;
contract Math {
    function squareRoot(uint x) public pure returns (uint) {
    }
    function modularExponentiation(uint base, uint exp, uint mod) public pure returns (uint) {
    }
}
pragma solidity ^0.8.0;
contract Multiprecision {
    function add(string memory x, string memory y) public pure returns (string memory) {
    }
    function sub(string memory x, string memory y) public pure returns (string memory) {
    }
    function mul(string memory x, string memory y) public pure returns (string memory) {
    }
    function div(string memory x, string memory y) public pure returns (string memory) {
    }
    function gt(string memory x, string memory y) public pure returns (bool) {
    }
    function lt(string memory x, string memory y) public pure returns (bool) {
    }
    function gte(string memory x, string memory y) public pure returns (bool) {
    }
    function lte(string memory x, string memory y) public pure returns (bool) {
    }
}
pragma solidity ^0.8.0;
contract Random {
    function random(uint min, uint max) public pure returns (uint) {
    }
    function random() public pure returns (uint256) {
    }
    function random(uint size) public pure returns (uint256[size] memory) {
    }
    function randoms(uint min, uint max) public pure returns (uint[]) {
    }
    function fromUtf8(string memory str) public pure returns (bytes32) {
    }
}
pragma solidity ^0.8.0;
contract Memory {
    function read_array(uint[2] memory a) public pure returns (uint) {
    }
    receive function() external payable {}
}
