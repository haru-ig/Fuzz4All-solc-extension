pragma solidity ^0.8.0;
contract Mutator2{
    uint internal a;
    uint internal b;
    uint internal c;
    function Mutator2 (uint a, uint b) public {
        this.b = b;
        this.a = a;
        this.c = b - a;
    }
    function Mutator(uint a, uint b) public {
        a+=b>0?b:0;
        c+=b==0?1:0;
    }
}

pragma solidity ^0.8.0;
contract Mutator3{
    uint internal a;
    uint internal b;
    uint internal c;
    function Mutator3 (uint a, uint b) public {
        a+=b>0?b:0;
        b+=b==0?1:0;
    }
    function Mutator(uint a, uint b) public {
        b+=b>0?b:0;
        a+=b==0?1:0;
    }
}
