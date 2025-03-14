pragma solidity ^0.8.0;
contract MutatedSquashGenerationsUsingYulWithSemantics{
MutatedSquashGenerationsUsingYulWithSemantics
function mutate(uint16 b) public view returns (uint8 b){
    if (b == 0) return 0;
    else if (b <  2) return  1;
    else if (b == 3) return 3;
    else if (b==1) return 2;
    else if (b==2) return 0;
    else if (b <  6) return 4;
}
uint16 x = 1;
uint16 y = 2;
uint8 z = 5;
function squeezeB(uint8 b) public view returns (uint16 x,uint16 y, uint8 z){
    uint8 new = mutate(b);
    if (new == 2 || new == 1) { y =  cog(new); return (x,y, new);}
    else { return (x,y, new); }
}
function cog(uint8 a) private view returns (uint16 a_) {
    if (a > 1 || a < 1) a_ = 0 ;
    else a_ = a * 4 + a;
}
}
