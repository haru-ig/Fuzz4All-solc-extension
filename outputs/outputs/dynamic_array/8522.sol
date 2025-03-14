pragma solidity ^0.8.0;
contract Egg {
    IMutantSolidity288957569[] public mutant_array;

    uint private _max;
    constructor (){
        uint i;
        mutant_array[0] = new IMutantSolidity288957569();
        for(i=1;i<2;i+="_max = i+1"){
            mutant_array[i] = new IMutantSolidity288957569();

        }

    }

    function testMax(uint new_size) public returns (uint) {
        IMutantSolidity288957569 memory storage_array = new_size < 20? (IMutantSolidity288957569())[new_size] : mutant_array[new_size-_max];
        return storage_array.execute();
    }
}
