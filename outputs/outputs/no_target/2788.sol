pragma solidity ^0.8.0;
contract new64{
    constructor()public{
        uint256 a;
        uint256 b;
        uint256 c;
        uint256 d;
        uint256 e;
        uint256 f;
        (a, b, c, d, e, f) = new160().new32();
        if(e==0 || f==0 || a!=0 || b!=0 || c!=0 || d!=0){
            if(a!=32 || b!=32 || c!=32){
                return;
            }
        }
        if(e!=32 || f!=32){
            return;
        }
    }
}

contract bad{
    constructor()public{
        uint test;
        (test,) = new160().new32();
        (test,) = new160().new64();
        (test,) = new160().new128();
    }
}
