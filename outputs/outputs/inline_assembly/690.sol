pragma solidity ^0.8.0;
contract Mutator8 {
    function testMethod() public view {
        bytes2 b = 0x08;
        uint256 a = 1u >> b;
        a = 1u >> (b << 16);
        a = 1u >> (b * 2);
    }
}
</code></pre>
