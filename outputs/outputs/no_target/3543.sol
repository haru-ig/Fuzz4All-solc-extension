pragma solidity ^0.8.0;
contract m107 {
    struct MyStruct {
        uint x;
        uint y;
        uint z;
        uint w;
    }
    MyStruct public s;
    constructor() public {
        s.x++;
        s.y++;
    }
}

pragma solidity ^0.8.0;
contract m108 {
    struct MyStruct {
        uint x;
        uint y;
        uint z;
        uint w;
    }
    MyStruct public s;
    MyStruct public s1;
    MyStruct[] public ms;
    MyStruct[] public ms1;
    constructor() public {
        s = s1 = ms.push(s);
        ms.push(s);
        ms1.push(s1);
        ms1.push(s1);
        ms1[2].x = 3;
    }
}

pragma solidity ^0.8.0;
contract m109 {
    struct MyStruct {
        uint x;
        uint y;
        uint z;
        uint w;
    }
    MyStruct public s;
    MyStruct public s1;
    MyStruct[] public ms;
    MyStruct[] public ms1;
    constructor() public {
        s = s1;
        s = s1;
        ms[2].z = 3;
        ms1[2] = ms[2];
        ms[2] = s1 = MyStruct({ x: 1, y: 2, z: 3, w: 4 });
        ms1[2] = s[2];
    }
    function f() public {
        s1 = s;
        s = MyStruct({ x: 1, y: 2, z: 3, w: 4 });
    }
}

pragma solidity ^0.8.0;
contract m110 {
    struct MyStruct {
        uint x;
        uint y;
        uint z;
        uint w;
    }
    MyStruct public s;
    MyStruct public s1;
    MyStruct[] public ms;
    MyStruct[] public ms1;
    constructor() public {
        s2[2] = s;
        ms1[2].z = 3;
        ms[2] = s1 = MyContract({ x: 1, y: 2, z: 3, w: 4 });
        ms1 = ms;
        ms = ms1 = [];
        ms1 = s1 = s2 = ms;
        ms1.push(s1);
        ms.push(s1 = MyContract({ x: 1, y: 2, z
