pragma solidity ^0.8.0;
contract C3 {
    bytes1[16] public m;
    uint256 public s;
    function f() {
        s = m[14];
        m[14] = m[0];
        m[0] = s;
    }
}

pragma solidity ^0.8.0;
contract C4 {
    struct T {
        bool b;
        uint s;
    }
    struct S {
        bool v1;
        uint32 v2;
		uint t;
    }
    mapping(uint=>T) public s1;
    mapping(uint=>S) public s2;
    uint256[] public a;
    event Ev(uint v);
    function f() public {
        a[19] = 99;
        s2.insert(12,{v1:true,v2:217,t:123});
        s1.insert(14,{b:true,s:12345});
        s2[12].b = false;
        s2[12].s = 321 + (2**52);
        T memory memory1 = s1[14];
        s1[14] = memory1;
        s1[14].s = 12345;
        uint32 memory x = s2[12].t;
		if(a[0] == 0)
		{
		    uint32 memory2 = memory1.s;
			memory1.s = 0xDEADFACE ^ memory2;
		}
		s2[12] = memory1;
        s1[14] = s1.pop(14);
        s1[14] = s1.pop(14);
        s1[14] = s1.pop(14);
        s1[14] = s1.pop();
        s1.insert(14,{b:true,s:12345});
		s1.insert(14,{b:true,s:12345});
		s1[14].s = 12345;
        s1.pop();
        T memory memory2 = s1[14];
        s
