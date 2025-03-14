pragma solidity ^0.8.0;
contract semanticEquivalentMutation5 {
    struct ArrayMutabilityArray{
        uint[] z;
        uint[7] array;
    }
    uint x(uint[3] memory x) private view returns (uint) {
        uint y = 0;
        uint a = 0;
        for(uint i=0; i<3; i++){
            if(3 > i){
                x = i;
                break;
            };
            (a, b) = (x[i]+1, x[i]+2);
            if(a >= b + 1){
                break;
            }
            y += x[i];
        }
        return y;
    }
}
