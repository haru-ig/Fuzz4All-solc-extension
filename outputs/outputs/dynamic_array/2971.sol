pragma solidity ^0.8.0;
contract SymbolicEquality01_AssignmentAndAccessMethod {
    mapping (address => uint) internal map;
        constructor () public {
        map[0x4f4afed25f99329cd7ee550c0cf8396fd239bf84] = 0;
        map[0xA9A95f9421200271b1fD5D9299B430f5FFe98a82] = 4;
        map[0xDD8df7604af672f3E88D403d382291eCB7BF9F01] = 5;
        map[0x6B90fB61085b6721cFF30DE502E37f50608b4f9e] = 9;
    }
        function m() public view returns (mapping (address => uint)) {
        return map;
    }
}
