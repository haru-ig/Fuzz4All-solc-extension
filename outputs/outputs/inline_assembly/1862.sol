pragma solidity ^0.8.0;
contract oldX {
    uint internal x = 1;
    function func() public {
        uint256 i = 1;
        uint256 n = 1;
        while (n > i) {
            x = x + n;
            i++;
            n += 2;
        }
    }
}
