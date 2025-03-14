pragma solidity ^0.8.0;
contract Mutate9 {
    uint[] b;
    constructor() {
        b = [250, 180, 750, 250];
    }

    function suma(uint[] memory) private view returns(uint) {
        uint[] memory aux = new uint[](b.length);
        for(uint i=0; i<aux.length; i++){
            if(b[i]!= 0){
                aux[i] = b[i];
            }
        }

        uint len = aux.length;
        uint sum = 0;
        for(uint i = 0; i < len; ++i){
            sum += aux[i];
        }

        return sum;
    }
}
