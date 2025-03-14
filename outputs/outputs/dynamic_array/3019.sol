pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentDynamicAraryModulation2 {
    uint[][] public x;
    uint[][] readonly p;
    constructor () public {
        x = new uint[2][];
        x[0] = new uint[0];
        x[1] = new uint[2];
        x.push(new uint[0]);
        x.push(new uint[2]);
        p = new uint[1][0];
        p[0] = p[1] = x;
        p.push(new uint[20]);
        p.push(new uint[20]);
        p.push(new uint[][20]);
        p.push(new uint[20]);
        p[0].push(new uint[20]);
        p[0].push(new uint[20]);
        p[0][0].push(new uint[20]);
        p[1].push(new uint[20]);
        p[1].push(new uint[20]);
        p[0][0].push(new uint[20]);
        p[0][0].push(new uint[20]);
        p[0][1].push(new uint[20]);
        p[1][0].push(new uint[20]);
        p[1][0].push(new uint[20]);
    }
        function m(uint[][] storage x_) public view returns (uint[][] memory) {
        uint[][] memory temp = new uint[2][];
        temp[0] = temp[1] = x_;
        temp.push(new uint[1]);
        temp.push(new uint[0]);
        p = temp;
        return p;
    }
}
