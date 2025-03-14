pragma solidity ^0.8.0;
contract MixedContactsExample537 {

    uint256 constant x = 123;
    uint32 constant a = 3;
    uint32 constant b = 222;
    uint32 constant c = 2223;
    uint32 constant d = 3333;
    uint32 constant e = 222223232;
    uint256 constant z = 4294967295;
    uint256 constant z1 = 4294967296 - 1;


    function f(bool x) external pure returns (bool) {
        return x;
    }



    function g(uint256 x) internal pure returns (enum { Yes, No, Never }) {
        if (x < z1) {
            return enum.Yes;
        } else if (x == z1) {
            return enum.No;
        } else {
            return enum.Never;
        }
    }


    function h(uint256 x) pure {}



    function i(uint49 x) external pure returns (uint856) {
        uint856 p = (uint856(uint64x));
        p -= (uint856(uint49(uint64x)));
        return p;
    }



    function j() public virtual {}

}
