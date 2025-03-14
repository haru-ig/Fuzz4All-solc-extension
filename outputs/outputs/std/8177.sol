pragma solidity ^0.8.0;
contract Division {
    uint constant num = 5;
    uint _num = 17;
    uint myDiv(uint a, uint b) returns (uint x){
        x = div(a,b);
        return x;
    }

    function main() public {
        uint x = div(_num,myDiv(num,2));
        assert(x==2);
    }
}
