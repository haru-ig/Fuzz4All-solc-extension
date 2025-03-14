pragma solidity ^0.8.0;
interface ArrayInterface {
    function min(uint[] memory a) internal pure returns(uint);
     function max(uint[] memory a) internal pure returns(uint);
    function push(uint[] memory a, uint _value) internal;
    function pop(uint[] memory a) internal;
}
