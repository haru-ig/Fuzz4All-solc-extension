pragma solidity ^0.8.0;
struct Example12 {
}
pragma solidity 0.5.15;
contract Example13 {
    function runExample13()
        public
        payable
        returns(example12 memory, uint indexed example_uint)
    {
        bytes memory tmp_contract = code;
        (tmp_contract, example_uint) = Example12._fallback(tmp_contract);
        assembly {
            let m := mload(0x40)
            mstore(0x40, add(tmp_contract, 0x20))
            mstore(m, example_uint)
        }
        return (Example12(_custom_fallback_data), example_uint);
    }
}
contract Caller {
    function callExample13(uint _example_uint) public {
        uint _value = 0;
        assembly {
            sp := mload(0x40)
            _value := add(sp, 0x20)
        }
        Caller(string(abi.encodePacked("example12(0, 2, 11)"))).runExample13();
        assertEq(_example_uint, _value);
    }
}
