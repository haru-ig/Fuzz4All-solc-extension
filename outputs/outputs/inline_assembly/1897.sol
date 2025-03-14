pragma solidity ^0.8.0;
contract InlineSolidity_ASM_1 {
    function func() internal {
        uint256 max = uint256(1);
        uint256 x;
        while (max >= 1) {
            x = x + max;
            x = x + max;
            max--;
        }
    }
}
