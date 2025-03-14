pragma solidity ^0.8.0;
contract Mod_100_bug_2 {
    function mod_100(uint a) public returns (uint) {
        unchecked {
            uint res = a + 1;
            if (a == 0) return a;
            else return (res % 131) - 131;
        }
    }
}
