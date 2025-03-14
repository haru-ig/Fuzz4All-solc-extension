pragma solidity ^0.8.0;
address public a;
contract Baz {
    function f() public view returns(uint256 a) {
        (a, ) = (a, );
    }
}
class Mutated is Baz {
    function f() public view returns(uint256 a) {
        return (a + 1) * 2;
    }
}
class CheckCasts1 {
    function g() public {
        uint256 a = (uint256(a) << 1) ^ 1 + (uint256(a) >> 1) * uint256(a < ((((uint256(1)) << ((1 - 100) >> 128)) - uint256(uint256(uint256(uint256(1)) << ((1 - 100) >> 128)))), (((uint8(uint256(uint256())) >> uint256(uint256(uint256(uint256(1)))) + uint256(uint256(uint256(uint256(1)) << ((1 - 100) >> 128)))) + uint256(uint256(uint256(uint256(uint256(1))))) >> uint256(uint256(uint256(uint256())) >> uint256(uint256(uint256(uint256())) >> uint256(uint256(uint256(uint256(1))))))) + (((uint256(uint256(uint256(15))) >> uint256(uint256(uint256(uint256(uint256(15))) >> uint256(uint256(uint256(uint256(1)))))))) >> uint256(1)) + uint256(uint256(uint256((6 - (uint8(uint256(uint256((uint8(uint256(uint256(((uint256(uint256(uint256(63)))) + uint256(uint256(66))))))))) >> uint256(6)))))))) >>> uint256(uint256(uint256(uint256((uint8(uint256(uint256(uint256(uint256(uint256(uint256((uint8(uint256(uint256((uint8(uint256(uint256(uint256(uint256(64))))))))))) ++ uint256(uint256(uint256(uint256(uint
