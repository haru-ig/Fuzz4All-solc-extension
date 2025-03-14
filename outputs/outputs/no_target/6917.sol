pragma solidity ^0.8.0;
contract TestPrecompiled110657 {
    contract Precompiled123456 {
        function Precompiled23234323() public pure {}
        function Precompiled23234323Return() public pure returns (uint) {
            return 0x1234;
        }
    }

    contract Precompiled883101 {
        function f() public pure returns (uint) {
            _Precompiled123456.Precompiled23234323();
            _Precompiled883101.f();
            return 0x43a0;
        }
        function g() public pure returns (uint) {
            _Precompiled883101.f();
            _Precompiled883101.Precompiled23234323Return();
            return 0x43a0;
        }
    }
}
