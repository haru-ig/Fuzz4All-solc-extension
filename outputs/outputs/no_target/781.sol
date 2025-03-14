pragma solidity ^0.8.0;
contract SemanticCheckSemanticsInvalid {
    function add3(uint a)
        public pure
        returns (uint)
    {
        uint b = a + 1;
        uint c = a + b;
        uint _d = a - +uint(100);
        uint i = uint(a - uint 10 - uint 100 + uint 11);
        uint j = uint (-0.5 + 1);
        uint k = uint(100 - uint 100001);
        uint l = uint (uint 12 - uint 65536 + uint 1);
        uint m = uint (uint 12 - uint 65536 - uint 1) + uint 1;
        uint n = uint (uint 12 - uint 65536 + uint 2) + uint (uint 65536 + 1);
        uint o = uint (uint 12 - uint 65536 - uint 2) + uint (uint 65536 + 1);
        uint p = uint(12 - uint 4 + uint 65535) - uint 65535;
        uint q = uint (uint 1 - uint 0.5);
        uint r = uint(65535 + 1 + (uint256(12345678) + 3456780 + 1) + 1);
    }

}
