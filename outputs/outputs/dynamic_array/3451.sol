pragma solidity ^0.8.0;
contract C2 {
    uint[] public v1;
    uint[] public v2;
    uint[] public v3;
    uint length;
    function multiply(uint a, uint b) public payable {
        v2[1] = b;
        v3[2] = a*b;
    }
}

pragma solidity ^0.8.0;
contract C2 {
    uint[] public v1;
    uint[] public v2;
    uint[] public v3;
    uint length;
    function multiply(uint a, uint b) public payable {
        v1.push(b);
        v2.push(a*b);
        v3.push(b);
    }
}
