pragma solidity ^0.8.0;
contract MutatedBlock2Mutation86 {
    uint internal _var;
    function test1() public returns (uint) {
        _var += block.timestamp;
        return _var + block.number + 1;
    }
}


remix test
const REMIP_RESULTS = `pragma solidity ^0.8.0;\ncontract mutatedblock2mutation85 {\n\tint internal _var;\n\n\n\n

console.log("Expected:\n", REMIP_RESULTS);
console.log("Actual:\n", compileAndRun("MutatedBlock2Mutation85.sol"));
