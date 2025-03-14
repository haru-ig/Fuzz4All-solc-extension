pragma solidity ^0.8.0;
contract MutateGen {
    function doSomething(uint[] calldata a, uint idx, bool flag) external {
    (uint arr) = a;
    uint[] memory arr2 = new uint[](3);
    uint x;
    for(uint i = 0; flag == true; i++) {
        arr2[i] = (uint) i;
    }
    arr[idx] += arr2[0] + arr2[1] + arr2[2];
    delete arr;
    delete arr2;
    }

    function doSomething2(uint[] memory a, uint idx, bool flag) external {
    (uint arr) = a;
    uint[] memory arr2 = new uint[](3);
    uint x;
    for(uint i = 0; flag == true; i++) {
        arr2[i] = (uint) i;
    }
    arr[idx] += arr2[0] + arr2[1] + arr2[2];
    delete arr;
    delete arr2;
    }
}
