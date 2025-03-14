pragma solidity ^0.8.0;
contract c {
    library mylib {
        struct A {
            uint32 a;
        }
        function f(address a) internal pure returns (bytes32) {
            return keccak256(abi.encodePacked(a));
        }
    }
    function m(bytes memory _t2, A memory _t4) internal pure {
        mylib.A t5;
        _t2 = _t2;
        t5.a = 2;
    }
}
