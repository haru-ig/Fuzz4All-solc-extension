pragma solidity ^0.8.0;
contract Test46 {
    function f() public pure {
        int[] memory s = new int[](-1);
        s[4] += 0x02;
        if (s.length < 0) require(1==1);
    }
}
