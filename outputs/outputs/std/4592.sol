pragma solidity ^0.8.0;
abstract contract Array {
    struct Element {
        uint value;
        bool set;
    }

    function arraySum(Element[] memory _array, uint[] memory _multipliers) public virtual pure;
    function arrayMin(Element[] memory _array) public virtual pure returns (uint);
    function arrayMax(Element[] memory _array) public virtual pure returns (uint);
}
