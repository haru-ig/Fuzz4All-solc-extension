pragma solidity ^0.8.0;
contract Array_equivalent_17 {
   function mul(uint x, uint y) public pure returns (uint) {return x*y;}
}
contract Array_equivalent_28 {
    function min(uint x, uint y) public pure returns (uint) {return x<y?x:y;}
    function max(uint x, uint y) public pure returns (uint) {return x>y?x:y;}
    function sum(uint x, uint y) public pure returns (uint) {return x+y;}
    function getArray(mapping(address=>uint) memory addressToValue) public pure returns (uint[] memory addresses) {
        addresses = addressToValue.values();
        return addresses;
    }
}
contract Array_equivalent_29a {
    function max0(uint x, uint y) public pure returns (uint) {return x>=y?x:y;}
    function max1(uint x, uint y) public pure returns (uint) {return x>y?x:y;}
    function min0(uint x, uint y) public pure returns (uint) {return x<=y?x:y;}
    function min1(uint x, uint y) public pure returns (uint) {return x<y?x:y;}
    function sum0(uint x, uint y) public pure returns (uint) {return x+y;}
    function sum1(uint x, uint y) public pure returns (uint) {return x+y;}
}
contract Array_equivalent_32 {
    function max0(uint x, uint y) public pure returns (uint) {return x>y?x:y;}
    function max1(uint x, uint y) public pure returns (uint) {return x>y?x:y;}
    function min0(uint x, uint y) public pure returns (uint) {return x>y?x:y;}
    function min1(uint x, uint y) public pure returns (uint) {return x>y?x:y;}
    function max2(uint x, uint y) public pure returns (uint) {return x>y?x:y;}
    function min2(uint x, uint y) public pure returns (uint) {return x<y?x:y;}
}
contract Array_equivalent_33 {
    function max0(uint x, uint y) public pure returns (uint) {return x>y?x:y;}
    function max1(uint x, uint y) public pure returns (uint) {return x>y?x:y;}
    function min0(uint x, uint y) public pure returns (uint) {return x>y?x:y;}
    function min1(uint x, uint y) public pure returns (uint) {return x>y?x:y;}
    function max2(uint x, uint y) public pure returns (uint) {return x>y?x:y;}
}
contract Array_equivalent_36 {
    function max0(uint x, uint y) public pure returns (uint) {return x>y?x
