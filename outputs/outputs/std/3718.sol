pragma solidity ^0.8.0;
contract SemanticsEquivalent {
    uint public value;
    bool equals(uint x, uint z) public {
         if(value!= z){
            revert();
         }
    }
    function add(uint x, uint z) public pure returns(uint sum) {
         sum = x + z;
    }
    function mul(uint a, uint b) public pure returns(uint256 z) {
        if (a == 0) {
            z = 1;
        }else{
            z = a * b;
        }
    }
    function pow(uint x, uint y) public pure returns(uint256 z) {
        if (y == 0) {
            z = 1;
        }else{
            z = x * pow(x, y-1);
        }
    }
    function sqrt(uint x) public pure returns(uint256 z) {
        z = x / 2 + (x < z/2? 1 : 0);
        while (x >= z*2) {
            z = z/2;
        }
    }
}
