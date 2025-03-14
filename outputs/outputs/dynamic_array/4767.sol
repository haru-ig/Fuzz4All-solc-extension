pragma solidity ^0.8.0;
contract Test2 {
    uint[5] a;
    function MutateData() public {
        a[0] = 10;
        a.push(100);
        a.push(200);
    }
    function MutateData2() public {
        a.push(a[0]);
        uint a1 = a[1];
    }
}

pragma solidity >=0.4.22 <0.7.0;
contract Test3 {
    uint[123] [5] c;
    uint mynum;
    function MutateData() public {
        uint b = c.length;
        c[mynum][b] = b;
        uint b1 = b;
        c2[0] = mynum;
        uint c2 = c2[0];
        c[mynum][mynum] = 100;
        uint c21 = c2[0];
    }
    function MutateData2() public {
    }
}
