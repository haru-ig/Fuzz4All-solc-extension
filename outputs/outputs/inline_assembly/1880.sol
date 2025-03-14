pragma solidity ^0.8.0;
contract oldY {
    function func() public {
        int256 n;
        int x = 1;
        while (n >= 1) {
            x = x + n;
            x = x + n*2;
            n--;
        }
    }
}
