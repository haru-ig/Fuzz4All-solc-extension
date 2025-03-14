pragma solidity ^0.8.0;
contract semanticEquivalentMutation5B {
    struct ArrayMutability{
        uint z;
        uint[2] _array;
    }
    function semanticEquivalent(ArrayMutability memory A)
    public
    pure
    returns (uint, uint, bool x)
    {
        uint a,b;
        uint[2] memory x;
        uint z;

        z = x.length;

        a = A.z;
        b = A._array[0];

        x[0] = z;

        uint aa;
        for(uint i = 0; i < A._array.length; i++){

            aa = A._array[i];
            if(aa == aa){
                uint bb;
                for(uint j = 0; j < aa; j++){
                    bb = A._array[j];
                    if(bb == bb){
                        uint cc;
                        for(uint k = 0; k < bb; k++){
                            cc = A._array[k];
                            if(cc == cc){
                                x[1] = cc;
                                break;
                            }
                        }
                        x[0] += 1;
                        break;
                    }
                }
                x[0] += 1;
            }
            x[0];
        }

    }
}
