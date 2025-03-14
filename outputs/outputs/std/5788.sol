pragma solidity ^0.8.0;
contract Mutated6{

    uint[] public a;
    constructor(){
        a = new uint[](1);
        a[0] = 1;
    }

    function mutated6189() public returns (uint) {
        uint result = a[0];
        for(uint x; x < a.length; x++){
            if(a[x] > result){
                result = a[x];
            }
        }
        return result;
    }

    function mutated6190() public returns (uint) {
        uint result = a[0];
        for(uint x; x < a.length; x++){
            if(a[x] < result){
                result = a[x];
            }
        }
        return result;
    }

    function mutated6191() public returns (uint) {
        uint result = 0;
        for(uint x; x < a.length; x++){
            result += a[x];
        }
        return result;
    }
}
