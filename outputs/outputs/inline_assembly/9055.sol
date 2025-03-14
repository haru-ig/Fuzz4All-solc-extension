pragma solidity ^0.8.0;
interface I
{
    function add2(uint) external pure returns (uint);
	function add2(uint) public pure returns (uint);
    function mul2(uint) public pure returns (uint);
}
library Lib
{
    function add(I i) public pure returns(uint){
        return (i.add2(3));
    }
    function f(I i) public pure returns(uint) {
        return (I(i).add2(3));
    }
    function f2(I i) public pure returns(uint) {
        return (i.add2(i.add2(3)));
    }
}
