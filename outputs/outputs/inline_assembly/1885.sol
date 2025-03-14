pragma solidity ^0.8.0;
contract oldY {
    int constant internal x = 0;
    function func() public {
        uint256 max = 1<<28;
        uint256 x;
        while (max >= 1) {
            x = x + max;
            x = x + max;
            max--;
        }
    }
}
