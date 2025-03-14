pragma solidity ^0.8.0;
contract oldY {
    uint internal x = 1;
    address y;
    function func() public {
        x = x + 1;
        y.transfer(address(this));
    }
}
