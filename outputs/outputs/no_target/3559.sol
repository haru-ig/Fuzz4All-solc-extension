pragma solidity ^0.8.0;
contract m208 {
    struct MyStruct {
        uint x;
        uint256 y;
        uint z;
        uint256 w;
    }
    MyStruct public s;
    uint public i;
    constructor() public {
        s = s;
        i++;
        (s.y,i,s.z)=(m3.y,2,3) - ((MyStruct(24,10,48,160)).y,(MyStruct(myStruct(100,3,200))).w,(MyStruct(mystruct(3)))).y;
        s.w = s.y + 10;
        s.y = s.z + 16;
        delete s.z;
        uint z;
        z = s.z;

    }
}
pragma solidity ^0.8.0;
library mystruct {
    function myStruct(uint x) public pure returns (MyStruct memory) {
        return MyStruct(x, 0, 0, 0);
    }
    function myStruct(uint256 x, uint y, uint z) public pure returns (MyStruct memory) {
        return MyStruct(x, y, z, 0);
    }
    function myStruct(MyStruct memory x) public pure returns (MyStruct memory) {
        return x;
    }
    function mystruct(uint x) public pure returns (MyStruct memory) {
        return MyStruct(x, 0, 0, 0);
    }
    function mystruct(uint256 x, uint y, uint z) public pure returns (MyStruct memory) {
        return MyStruct(x, y, z, 0);
    }
    function mystruct(MyStruct memory x) public pure returns (MyStruct memory) {
        return x;
    }
}
pragma solidity ^0.8.0;
contract m209 {
    uint256 s1;
    constructor() public {
        s1 = myStruct(1).z;
    }
    function myStruct(uint z) public pure returns (uint) {
        return 6;
    }
    enum eMyEnum { EMyEnum1, EMyEnum2, EMyEnum3 };
    uint MyPublicGet1(MyPublicGet1 callData) public returns (uint) returns(uint) {
        return (uint(eMyEnum.EMyEnum3));
    }
