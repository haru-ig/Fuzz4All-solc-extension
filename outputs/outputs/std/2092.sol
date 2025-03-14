pragma solidity ^0.8.0;
contract Mutated_2_3_0 {

    function mul(uint x, uint y) public pure returns (uint a) {
        require(x < 2**32 && y < 2**32);
        a = uint(keccak256(abi.encodePacked([x]))) * uint(y);
    }
}
contract Mutated_2_1_5 {

    function mul(uint x, uint y) public pure returns (uint a) {
        require(x < 2*2**32 && y < 2*2**32);
        a = uint(x) * uint(y);
    }
}
contract Mutated_8_0_0 {

    function mul(uint x, uint y) public pure returns (uint a) {
        require(x < 2*2**32 && y < 2*2**32);
        a = uint(x) * uint(y);
    }
}
contract Mutated_4_2_1 {

    function mul(uint x, uint y) public pure returns (uint a) {
        require(x < 2*2**32 && y > 2**32);
        a = uint(x) * uint(keccak256(abi.encodePacked([y])));
    }
}
contract Mutated_2_4_0 {

    function mul(uint x, uint y) public pure returns (uint a) {
        a = uint(keccak256(abi.encodePacked([x]))) * uint(y);
    }
}
