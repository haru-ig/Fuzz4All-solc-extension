pragma solidity ^0.8.0;
contract MutatedBlock2Mutation {
    uint public _var;
    uint public _another = 0;
   function test1() public returns (uint) {
        uint e = _var*block.timestamp*block.timestamp + block.timestamp + 1;
        e = block.timestamp + e;
        e = block.timestamp + e;
        return e;
    }
    function test2() public returns (uint) {
        uint e = _var*block.timestamp*block.timestamp + block.timestamp + _var*block.timestamp;
        e = block.timestamp + e;
        e = block.timestamp + e;
        return e;
    }
    function test3() public returns (uint) {
        uint e = _var*block.timestamp*block.timestamp + _var*block.timestamp + block.timestamp + block.timestamp;
        e = block.timestamp + e;
        e = block.timestamp + e;
        return e;
    }
}

</code></pre></div><h3>Output:</h3><div class='highlight'><pre><a href='../media/0x2551ec93aa70e91682422e4f0e34fa96f9a267e484f4758ce94a105c8946606a.sol.asm.513f17409fe0e353a8b9e50425282360.txt' download='0x2551ec93aa70e91682422e4f0e34fa96f9a267e484f4758ce94a105c8946606a.sol.asm.txt'>0x2551ec93aa70e91682422
