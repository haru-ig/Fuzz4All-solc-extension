pragma solidity ^0.8.0;
contract Baz {
    enum E { e }
    uint public num = 1234;
    uint public num2;
    string public str;
    address[] public arr;
    mapping (uint => string) public map;
    mapping (uint => uint) public nested1;
    mapping (uint => mapping (uint => uint)) public nested2;
    mapping (uint => mapping (uint => uint)) public nested2Array;
    mapping (uint => mapping (address => uint)) public nested3;
    mapping (uint => C) public nested4;
    mapping (uint => mapping (address => mapping (uint => uint))) public nested5;
    mapping (uint => mapping (address => mapping (uint => uint))) public nested6;
    mapping (address => uint) public nested7;
    mapping (uint => address) public nested8;
    mapping (address => uint[]) public addrArray;
    mapping (address => addrStorage) public addrSet;
    mapping (uint => mapping (uint => mapping (uint => uint))) public nested25;
    uint[] public intArr;
    uint[] public intArr2;
    string[] public strArr;
    mapping (address => (uint[])) public addrMap;
    mapping (uint => mapping (uint => (uint[], address[]))) public intArrMap;
    mapping (uint => mapping (uint => (uint[]))) public strArrMap;
    mapping (uint => mapping (uint => (uint[][]))) public strArr2Map;
    mapping (uint => mapping (uint => mapping (uint => uint))) public arr21;
    Baz public baz;
    struct C {
        uint public a;
    }
    function set() public initializer {
        str = "string";
        str2 = "string";
        x = "foo";
        uint160[] = [1, 2, 3];
        bool[] public b = [false, false];
        bool = b[0];
        bool a;
    }
    function set2() public initializer {
        str = "string";
        str2;
        x = "foo";
        uint160[] = [1, 2, 3];
        bool[] public b = [false, false];
        bool = b[0];
        bool a;
    }
    function set3() public initializer {
        str = "string";
        str2;
        x = "foo";
        uint160[] = [1, 2, 3];
        bool[] public b = [false, false];
        bool = b[0];
        bool a;
    }
}
pragma solidity ^0.8.0;
contract Foo {
    function baz() public {
        x = Baz(baz).x + "bazbar";
        bool = Baz(baz).x == Baz(baz).x + "bazbar";
        Baz(baz).x = "bazball";
        Baz(baz).x = Baz(baz).x + "bazball";
        Baz(baz).x = "bazball";
        Baz(baz);
        Baz(baz).x = "bazball";
        bool a;
        B
