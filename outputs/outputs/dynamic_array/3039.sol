pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentModulation {
    uint[] public x;
    mapping(uint => uint) public y;
    struct mypair { uint aValue; uint bValue; }
    constructor () public {
        x = new uint[](3);
        x[0] = x[2];
        x[1] = x[2];
        x.push(x[2]);
    }
        function m() public view returns (uint[] memory) {
        return x;
    }
        function set(uint a, uint b) public {
        x[1] = a;
        x.push(a);
    }
        function setPair(mypair memory a) public {
        x[1] = a.aValue;
        x.push(a.aValue);
    }
        function setPair2(uint b) public {
        x[1] = b;
        x.push(b);
    }
        function setPair3(mypair memory a, uint c) public {
        x[1] = a.bValue;
        x = new uint[](2);
        for (uint i = 0; i < x.length; i++)
        {
            if (x[i]!= 0)
            {
                x.push(a.bValue);
            }
        }
    }
        function setPair4(mypair memory a, uint b, uint c) public {
        x.push(a.bValue);
        x.push(b);
    }
        function sub_pair(uint k, uint b) public {
        while (x.length > (2*k))
        {
            x.pop();
        }
        x[k] = b;
    }
}
