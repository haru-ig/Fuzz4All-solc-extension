pragma solidity ^0.8.0;
contract Mod5 {
    uint10 a;
    function update(address payable y) private {
        require(address(this).balance > y.balance);
        if (uint8(y.balance) == uint8(a)) {
            a = uint8(y.balance);
        }
    }
    function f1() public {
        update(address(0));
    }
}
