pragma solidity ^0.8.0;
contract oldY {
    int constant internal x = 0;
    int external sum;

    function func() public {
        while (sum >= 1) {
            sum = sum + sum + sum;
        }
    }
}
