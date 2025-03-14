pragma solidity ^0.8.0;
contract HelloWorld {
    mapping(uint160 => uint) mappingCount;
    function addCount(uint x) public returns (uint160 x160, uint x1) {
        x160 = x;
        x1 = mappingCount[x60];
        mappingCount[x] = x1;
        mappingCount[x160] += 1;
        return (x, x1);
    function getCount() public view returns (uint160 x160) {
        x160 = mappingCount[1];
        return (x, x1);
    }
}
