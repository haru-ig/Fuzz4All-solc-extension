pragma solidity ^0.8.0;
contract oldStorage{
    uint public a;

    function oldStorage() public {
        a = 1;
    }

    function oldStorage(uint x) public {
        a = x;
    }

    function oldStorage(uint x, uint y) public {
        a = x + y;
    }
}

contract unusualBug {
    function oldStorage(uint x, uint y) public {
        a[x + y] = x - y;
        a[x + y + 1] = x + y;
    }
}
