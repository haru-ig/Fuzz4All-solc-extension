pragma solidity ^0.8.0;
contract Test1 {
    function test(uint n) public view returns (uint, bool, uint) {
        if (n % 3 == 0 && n % 5 == 0) {

            uint x = n;
            while (x!= 1) {
                x = x / 3 * 3;
            }
            while (x!= 1) {
                x = x / 5 * 5;
            }
            return (x, true, x);
        }
        return (n, false, n);
    }
}

pragma solidity ^0.8.0;
contract Test2 {
    uint y;
    bool test(uint _x) internal view returns (uint, bool) {
        return (_x*2,_x!=1);
    }
}


pragma solidity ^0.8.0;
contract Test3 {
    uint y;
    function test(uint _x) internal view returns (uint, bool) {
        return (_x/2,_x!=1);
    }
}


pragma solidity ^0.8.0;
contract Test4 {
    address add;
    uint y;
    function test(uint _x) internal view returns (uint, bool) {
        return (_x/2,add!=_x);
    }
}


pragma solidity ^0.8.0;
contract Test5 {
    function test(uint _x) internal pure returns (uint, bool) {
        return (_x/2,false);
    }
}


pragma solidity ^0.8.0;
contract Test6 {
    struct MyStruct {
        uint myUint;
        mapping (uint => bool) isThere;
    }

    MyStruct storage MyState = MyStruct(MyStruct.init());
    function test(MyStruct storage _x) internal view returns (MyStruct storage) {
        _x.isThere[3] = true;
        return _x;
    }
}


pragma solidity ^0.8.0;
contract Test7 {
    struct MyTuple {
        uint myUint;
        uint myUint2;
    }

    MyTuple storage MyState = MyTuple(MyTuple.init);
    function test(MyTuple storage _x) internal view returns (MyTuple storage) {
        uint storage x = _x.myUint2;
        return _x;
    }
}


pragma solidity ^0.8.0;
contract Test8 {
    uint public get_n;
    function get() public view returns (uint
