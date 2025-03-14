pragma solidity ^0.8.0;
contract MutatedSemantics {
    uint256[2] public values;
    function set(uint16 _v) public { values[1] = _v; }
    function get() public { return values[0]; }
}
contract Mixed {
    Mixed internal mutated;
    function set() public { if(abi.encodePacked(true, 2, 3)[0] == 5) { mutated.set(_1_8); } else { mutated.set(_-5); } }
    fallback function _set() external { } _set();

}
