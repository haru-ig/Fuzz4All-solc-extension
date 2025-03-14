pragma solidity ^0.8.0;
contract C {
    uint[][] public v6;
    uint[][] public v8;
    function multiply(uint a, uint b) public payable {
        v6[2][a] = b;
        v6[2][a*b] = a*b;
        v6[2][a+b] = a+b*(a*b);
        v6[2][a-b] = a-b*(a*b);
        v6[10][a] = b;
        v6[8][a*b] = a*b;
        v6[8][a+b] = a+b*(a*b);
        v6[8][a-b] = a-b*(a*b);
    }
}
