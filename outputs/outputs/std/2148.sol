pragma solidity ^0.8.0;
contract Mutated_4_3_0 {
    struct Mantissa{uint x; uint y; uint z; uint W;}
    function max(uint x, uint y) public pure returns (uint) {
        if(x < y) {
            Mantissa memory mm = Mantissa(uint(0), x, uint(0), uint(0));
            uint w = uint(2**255); uint t = (255*x*x) % w; uint f = t/(w + uint(4)); uint g = ((x-f)+w)%w;
            mm.x = t; mm.y = x; mm.z = f; mm.W = g;
            return mm.W;
        }
        else {
            Mantissa memory mm = Mantissa(uint(0), y, uint(0), uint(0));
            uint w = uint(2**255); uint t = (255*y*y) % w; uint f = t/(w + uint(4)); uint g = ((y-f)+w)%w;
            mm.x = t; mm.y = y; mm.z = f; mm.W = g;
            return mm.W;
        }
    }
}
contract Mutated_4_4_0 {
    function max(uint x, uint y) public pure returns (uint) {
        if(x > y) {
            uint W;
            for (uint j = 0; j < 32; j++){
                W = uint(2**uint(j));
                uint t = W + x*W;
                x = (t + (W/(2*(W+uint(-x))))) % W;
                if(x==0){
                    break;
                }
            }
            return W;
        }
        else {
            uint W;
            for (uint j = 0; j < 32; j++){
                W = uint(2**uint(j));
                uint t = W + y*W;
                y = (t + (W/(2*(W+uint(-y))))) % W;
                if(y==0){
                    break;
                }
            }
            return W;
        }
    }
