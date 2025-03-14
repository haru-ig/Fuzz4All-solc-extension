pragma solidity ^0.8.0;
contract CodeMutator {
    uint x = 1;
    uint y = 2;
    function g1(uint a, uint b, uint c) private pure returns (uint, uint, uint) {
        assert(b-42 == 0);
        return (a, b, c);
    }
    function g2(uint a, uint b, uint c) public pure returns (uint, uint, uint) {
        uint[] storage _arr = new uint[](3);
        _arr[(a*(2**32)-42)-42]=77;
        return g1(c, b, a);
    }
    function setA(uint a) public {
        x=a;
    }
}
contract AddressMutator {

    function _update(uint256 addr) internal returns (uint) {
        return addr^((256+y)%8);
    }
    uint x = 1;
    uint y = 2;
    function g1(uint a, uint b, uint c) private pure returns (uint, uint, uint) {
        assert(b-42 == 0);
        return (a, b, c);
    }
    function g2(uint a, uint b, uint c) public pure returns (uint, uint, uint) {
        _update(a);
        return g1(a, b, c);
    }
    function setA(uint a) public {
        y=a;
    }
}
contract AddressBugMutator {
    uint x = 1;
    uint y = 2;
       function g1(uint a, uint b, uint c) private pure returns (uint, uint, uint) {
        assert(b-42 == 0);
        return (a, b, c);
    }
    function g2(uint a, uint b, uint c) public pure returns (uint, uint, uint) {
        _update(a);
        return g1(a, b, c);
    }
}
contract SolidityAddressMutator {
    uint x = 1;
    uint y = 2;
    uint public a = 0;
    uint public b = 0;
    uint public c = 0;

    function g1(uint a, uint b, uint c) private pure returns (uint, uint, uint) {
        assert(b-42 == 0);
        return (a, b, c);
    }
    function g2(uint a, uint b, uint c) public pure returns (uint, uint, uint) {
        _update(a);
        return g1(a, b, c);
    }
    function set
