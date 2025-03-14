pragma solidity ^0.8.0;
contract Array {
    Array.sol public arr;
    uint256[] public testArr1;
    uint256[] public testArr2;
    uint256[] public arr2;
    function test1(Array.sol a) public returns(uint256 result) {
        result = a.add(1,2);
    }
}

pragma solidity ^0.8.0;
contract Array {
    Array.sol public arr;
    uint256[] public arr3;
    function test2(Array.sol a) public returns(uint256 result) {
        result = a.add(1,2);
    }
}
