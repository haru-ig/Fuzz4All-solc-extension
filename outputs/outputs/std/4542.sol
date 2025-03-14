pragma solidity ^0.8.0;
contract MyContract {
uint y;
mapping(uint => mapping(uint => mapping(uint => uint)))x;
function set(uint a) public {
	x[a][0][0] = 0;
	x[a][1][0] = 0;
	x[a][0][1] = 1;
	x[a][1][1] = 1;
	x[a][0][2] = 1;
	x[a][1][2] = 1;
}
function get()  public view returns(bool) {
	return x[0][0][0];
}
}
