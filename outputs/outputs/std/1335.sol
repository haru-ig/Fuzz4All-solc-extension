pragma solidity ^0.8.0;
contract NumberMutaters {
    NumberMutators immutable _numberMutators;
    function mutateUint(uint a) public pure returns (uint b) {
        uint sum = 0;
        for (uint i = 0; i < a; i++) {
            sum += i;
        }
        return sum + 127;
    }

    function mutateArray(uint a) public pure returns (uint[] memory b) {
        uint[] memory c = new uint[](a);
        for(uint i = 0; i < c.length; i++) {
            c[i] = i;
        }
        return c;
    }

    function convertUint(uint a) public pure returns (uint[]) {
        uint[] memory b = new uint[](1);
        b[0] = a;
        return b;
    }

    function getRandomBytes32() public pure returns (bytes32 random) {
        return bytes32(uint(uint256(abi.random()) >> 255));
    }

    function check(uint a) public view returns (bool b) {
        uint d = 1;
        if (a < 18446744073709551614) {
            d = 7;
        }
        if (a > (18446744073709551614 - (uint256(uint32(a)))))) {
            d = 3;
        }
        return (d == (_numberMutators.number(a)));
        return (d == 127);
    }


    function mutateArrayWithOffset(uint index, uint offset, uint value) public {
        uint result[1] = NumberMutators(_numberMutators).mutateArray(value);
        uint a;

        (a,,,a,,,,,,a,) = address(this).func.call(
            abi.encodeWithSelector(_numberMutators.numberFor,result),
            index,
            offset,
            uint256(uint32(_numberMutators.number(index)))+1);
        assert(a == uint256(_numberMutators.number(index)));
        (a,,,a,,,,,,a,) = address(this).func.call(
            abi.encodeWithSelector(_numberMutators.numberFor,result),
            index,
            offset+1,
            uint256(uint32(_numberMutators.number(index)))+1);
        assert(a == 0);
    }


    function numberFor(uint index, uint offset, uint value
