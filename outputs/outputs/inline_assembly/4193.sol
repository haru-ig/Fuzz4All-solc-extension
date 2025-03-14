pragma solidity ^0.8.0;
contract Mutators_Semantic {
    uint constant X = 10;
    function increment () external view returns (uint) {
        uint a = X;
        while(true) {
            a += X;
            if(a<=X) break;
        }
        return a;
    }
}
contract Mutators_Semantics {
    uint constant X = 10;
    function increment (address a) public view returns (uint) {
        a = address(0);
        uint a = X;
        while(true) {
            a += X;
            if(a<=X) break;
        }
        return a;
    }
}
contract Mutators_Semantics {
    uint constant X = 10;
    function increment (address b) public view returns (uint) {
        b = address(0);
        uint a = X;
        while(true) {
            a += X;
            if(a<=X) break;
        }
        return a;
    }
}
