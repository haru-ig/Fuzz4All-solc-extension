pragma solidity ^0.8.0;
interface IMutable {
   event M_E(uint a, uint b);
   function m_add(uint a) public view;
   function m_mul(uint a) public view;
   function m_div(uint a) public view;
   function m_mod(uint a) public view;
   function m_swap(uint a0, uint a1) public;
}
contract Mutable is IMutable {
    event M_P(uint a0, uint a1, uint b);
    uint x = 0;
    uint d = 1;
    uint public a;
    uint public b;

    mapping(bytes32 => mapping(bytes32 => uint8)) private z;
    mapping(bytes4 => bytes32) private b;
    uint16 public c;

    event M_E2(uint a, uint b, uint c);


    function() public pure {}
    function _hash(uint a) private pure returns (uint) {
        return uint(keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32", uint(a))));
    }

    constructor(address _toAdd) public {
        if (bool(uint(keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32", 0, 0, 0)))) > uint(keccak256(abi.encodePacked(uint(keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32", 0, 0, 0), 0, 0, 0, 0, 0))))))) {
            toAdd = _toAdd;
            x = 0;
            d = 1;
            a = 0;
        } else {
            toAdd = 0x55;
        }
    }
