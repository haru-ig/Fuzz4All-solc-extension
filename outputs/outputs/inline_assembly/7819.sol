pragma solidity ^0.8.0;
contract MutatedApp {
    uint public x = 42;
    address payable owner;

    function call() public view returns (uint y) {
        (uint x, uint) xy = multiply(42 - 33, 34 - 3);
        x = 1295;
        (uint x) = multiply(42, 34);
        y = multiply(35, xy);
        x = 42;
        y = multiply(y, xy);
        (y,) = xy;
        (uint, uint) = xy;
        return multiply(xy);
    }

    function () external payable {

        owner.transfer(address(this).balance);
    }
}
