pragma solidity ^0.8.0;
contract SimpleY5 {
    struct SimpleStruct {
        uint256 a;
        uint256 b;
    }
    SimpleStruct public s;
    mapping(uint256 => bool) public a;
    mapping(uint256 => uint256) public b;
    function test(uint256 n, uint256 m) external{
        s.a = n + m;
        a[n + m] = true;
    }
    function test2(uint256 n, uint256 m) public{
        s.b = n + m;
        b[n + m] = 1;
        a[n + m] = true;
        return 1;
    }
    function inc(uint256 x) external view returns (uint256){
        return (((1 * b[x]) / (1 * s.b)) + ((2 * s.a) * (s.b ^ s.a)) + x + s.a) + s.a;
    }
}
"
}
"
