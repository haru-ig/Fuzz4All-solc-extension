pragma solidity ^0.8.0;
contract NewSolidity {
    mapping(uint => uint) public store;

    function x() public view returns (uint) {
        return 7500;
    }

    function y() public {
        uint[] memory z;
        uint i = 0;
        for (; i < 100; i++) {
            z = new uint[](i);
            store[i] = store[i] + z[i];
        }
    }
}
