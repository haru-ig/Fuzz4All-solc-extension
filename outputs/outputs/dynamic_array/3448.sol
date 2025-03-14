pragma solidity ^0.8.0;
contract C1 {
    uint[] public v2;
    uint[] public v3;
    function multiply(uint a, uint b) public payable {
        var v1 = new uint[](10);
        v1[1000] = a;
        v2 = v1;
        v3 = v1;
        v2.push(10);
        v2.push(0x00);
        v3.push(0x00);
        C1 a1 = new C1(v2, v3);
        var sum;
        asm {
            sum := mul(a_0, b_0)
            mstore(v0, sum)
        }
    }
}
