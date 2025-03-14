pragma solidity ^0.8.0;
contract Arrays {
	uint public number = 0;
	function getCount() public pure returns(uint) {
	   return number;
    }
	function setCount(uint i) public {
       number = i;
    }
}
contract Array {
	uint public[200] array;
	function getLength() public pure returns(uint) {
	   bytes32[200] memory x;
        return x.length;
    }
	function get(uint i) public view returns (uint) {
       bytes32[200] memory x;
        return ( x[i]);
    }
	function set(uint i, uint v) public {
       bytes32[200] memory x;
        x[i] = v;
    }
	function setAll(uint i, uint v) public {
       bytes32[200] memory x;
        array[i] = v;
    }
	function findAll(uint v) public view returns (uint) {
       bytes32[200] memory x;
        return ( x[i]);
    }
	function sort() public{
       bytes32[200][200] memory x;
       bytes32[200] memory y;
       int i = 0;

       for(uint j=0; j<x.length; j++){
           for(uint h = 0; h<200; h++)y[h] = x[j][h];
       }

       for(i=0; i < x.length-1; i++){
           for(uint k = 0; k<200; k++){
               if(x[k][i] > x[k][j]){
                    x[k][i] = x[k][j];
                    x[k][j] = y[k];
                    y[k] = x[k][i];
               }
           }
        }
    }

}
contract Memory {
	address arrayofaddresses;
	address public addressofbytes;
	address public addressofaddresses;
	address[] public addressofarray;
	address public addressofnull;
  	address public firstaddress;

}
