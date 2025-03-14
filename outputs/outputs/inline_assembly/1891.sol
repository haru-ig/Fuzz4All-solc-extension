pragma solidity ^0.8.0;
contract oldY {
    int constant internal x = 0;
    int x;
    function func() public pure {
        uint256 max = uint256(1);
        uint256 tempX;
        while (max >= 1) {
            tempX = max;
            tempX = tempX + max;
            max--;
        }
        x = tempX;
    }
}
