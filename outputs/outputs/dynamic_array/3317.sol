pragma solidity ^0.8.0;
interface I2 {
    function use(uint256 key, bytes4 functionSelector) external;
}
contract C {
    address public addr1;
    mapping(bytes32 => uint) public map1;
    constructor(I1 x) public {
        addr1 = address(x);
    }
    function use(uint256 key, bytes4 functionSelector) public {
        I1 i1 = I1(addr1);
        map1[functionSelector] = i1.use(key, functionSelector);
    }
}
