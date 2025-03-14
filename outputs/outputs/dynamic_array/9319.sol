pragma solidity ^0.8.0;
contract Arrays {
     uint[] b;

    function get() view public returns (uint[]) {
        return b;
    }

    function set(uint []calldata newVal) public {
        b = newVal;
    }

    function array() public {
        set(new uint[](0, 10));
        set(new uint[](0, 100, 20));
        uint[] memory a = get();
        uint[] memory b = get();
        a[10] = 200;
        b[0] = 100;
    }

}
