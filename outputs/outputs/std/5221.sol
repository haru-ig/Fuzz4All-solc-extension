pragma solidity ^0.8.0;
contract MutatedArray {
    address[] public v;
    constructor(address payable a) public {
        v.push(a);
        v[550] = address(0xcafebabeebad);
    }
}
