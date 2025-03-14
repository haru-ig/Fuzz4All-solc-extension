pragma solidity ^0.8.0;
contract Convert {
    function convert(uint num, uint from, uint to) internal pure returns (uint) {
        return num / (from == 0? 10 ** uint256(to) : from) * (to == 0? 10 ** uint256(to) : to);
    }
}

pragma solidity ^0.8.0;
contract Equal {
    uint[3] public add;
    uint[3] public add2;
    constructor (uint[3] memory a) public payable {
        add = a;
    }
    function equals(uint[3] memory a) public view returns (bool) {
        return a[0] == a[1] + a[2];
    }
}

pragma solidity ^0.8.0;
contract Min {
    uint[3] public add;
    uint[3] public add2;
    constructor (uint[3] memory a) public payable {
        add = a;
    }
    function lessEqual(uint[3] memory a) public view returns (bool) {
        return a[0] <= a[1] && a[0] <= a[2];
    }
}

pragma solidity ^0.8.0;
contract Lots {
    uint[6] public a;
    uint[3] public b;
    constructor () public payable {
        a = [1, 2, 3];
    }
    function l1 (uint x, uint y, uint z) public returns(uint r){
        if(x>y)
             r=y - x;
        else
        if(x<z)
        if(x>0)
            r=x + y + z;
        else
        if(0>y)
            r=x;
        else
            r=y;
        else
        if(0>y)
            r=x;
        else
            r=y;
        else
        if(x>0)
            r=x +y + z;
        else
            r=x +y + z;
    }
    function l2 (uint t, uint s, uint o) public returns(uint){
        if(t==s)
            o=0;
        else
        if(s>t)
            o=t - s;
        if(t>1 && s>1)
            o= 0;
        else
        if(s>t)
            o=s - t;
        else
