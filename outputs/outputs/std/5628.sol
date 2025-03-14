pragma solidity ^0.8.0;
contract M660{
    M254 m;
    M254[5] immutable s;
    m.divide(1);
    m.multiply(1);
    m.addY(1);
    m.subY(1);
    for(uint i=0;i!=5;i++)
    {
        m.divide(1);
        m.multiply(1);
        m.addY(1);
        m.subY(1);
    }
  	m.x=4;
}

contract Main {
    function main() public static {
    	M660 m=new M660();
    }
}
