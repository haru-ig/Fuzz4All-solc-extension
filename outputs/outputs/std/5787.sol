pragma solidity ^0.8.0;
contract Mutated5{
    function mutated6() public returns (uint) {
        uint[] memory A = new uint[](4);
        for (uint i=0;i<A.length;i++){
            A[i] = 1;
        }
        for (uint i=A.length-1;i>=0;i--){
            delete A[i];
        }
        return 0;
    }
}
