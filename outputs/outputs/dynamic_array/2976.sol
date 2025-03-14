pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentNestedAraryWithCalldata {
    uint[] x;
        constructor () public {
        x.push(_encode(4));
        x.push(_encode(8));
        x.push(_encode(10));
        x.push(_encode(42));
    }
        function m() public view returns (uint[] memory) {
        return x;
        bytes memory b;
        uint[] memory ret;
        assembly {
            b := m()
            ret := add(m(),0x20)
            mstore(ret,b)
        }
        return ret;
    }
        function _encode(uint value) internal pure returns (bytes memory) {
        bytes memory b;
        assembly{
            b := mload(0x40)
            mstore(add(b,64),value)
        }
        return b;
    }
}
contract SymbolicEquality_AccessAndCalldataArrayWithCalldata {
    uint[] x;
        constructor () public {
        x = new uint[](3);
        x[2] = _encode(2);
        x[1] = _encode(1);
        x[0] = _encode(0);
        x[0] = _encode(5);
        x[0] = _encode(9);
    }
        function m() public view returns (uint[] memory) {
        return x;
    }
    function _encode(uint value) internal pure returns (bytes memory) {
        bytes memory b;
        assembly{
            b := mload(0x40)
            mstore(add(b,68),value)
        }
        return b;
    }
}
