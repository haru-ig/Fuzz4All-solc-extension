pragma solidity ^0.8.0;
contract test6{
    function foo() public returns (){
	bytes memory b1 = new bytes(1);
	b1[0] = 5;
	bytes memory b2 = new bytes(2);
	b2[0] = 0x5;
	bytes memory b3 = new bytes(3);
	b3[0] = 0x55;
	s2[2] myArray[] = [new s2(1), new s2(2), new s2(3), b1];
	s2[2] memory mem1;
	uint[2] memory um1;
	mem1[0] = 0;
	um1[0] = 0;
	s2[2] storage ss[2];
	ss[0] = new s2(3);
	ss[1].z = 1;
	ss[1].z = 4;
	um1[1] = 1;
	ss[1] = mem1;
	ss[1].z = 40000000;
	s2 mem0 = new s2(4);
	s2 memory mem02 = ss.last;
	mem02.z = 5000;
    }
    function bar() public returns (){
	s2[2] memory mem12;
	mem12[0] = 0;
	uint[2] memory um22;
	um22[0] = 0;
	s2[2] storage ss[3];
	ss[0] = new s2(0);
	ss[1] = new s2(1001);
	ss[2] = new s2(2);
	uint myCount = 1;
	ss[3][myCount] = mem12;
	ss[4] = new s2(myCount);
	ss.length = 2;
	ss[1] = mem12;
	ss[0].z = 0;
	ss[3][0] = new s2(1);
	ss[1] = new s2(1);
	ss[0] = new s2(1);
	ss[1] = new s2(1);
    }
}
