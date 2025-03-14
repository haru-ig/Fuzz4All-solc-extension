pragma solidity ^0.8.0;
contract Test {
    function returnsValue() public returns(uint32[27]) {
        uint32 res = returnsValue();
        uint32[27] memory mem = mem;
        dynamicArr.push(res);
        return res;
    }
    uint32[] private dynamicArr;
}
