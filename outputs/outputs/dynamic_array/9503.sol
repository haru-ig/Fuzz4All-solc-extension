pragma solidity ^0.8.0;
contract AnotherTest {
    address payable owner;
    struct Foo {
        uint myField;
        uint numSubFields;
    }
    mapping (address => mapping(address => uint)) mapOfInts;
    mapping (address => mapping(uint => subFields)) mapOfSubs;
    Foo[] public mFoo;
    mapping (address => mapping(address => bool)) mapOfBooleans;
    address[] public mAddresses;
    mapping (uint => bar) public mapOfBars;
    mapping (address => string) public mappingOfStrings;
    event Created (address indexed owner);
    function create() public {
        owner = sendToContract(msg.sender);
    }
    function subField() public returns (uint) {
        return mFoo[0].numSubFields;
    }
    function nestedSubField() public payable returns (uint8) {
        return mFoo[0].numSubFields;
    }
    function nestedSubSubField() public returns (uint) {
        return mFoo[0].numSubFields;
    }
    function subFieldWithAddress() public returns (address) {
        return mFoo[0].address;
    }
    function addressWithSubField(address _add) public returns (address) {
        return _add;
    }
    function create2 (uint _num) public payable {
        addFooBar(msg.sender);
    }
    function create3 (address x) public {
        setBars(_addx, _xsub);
        setBars(_xxbarbar);
        mFoo.push(Foo(42, 2));
        mAddresses.push(_xsub);
        setBars(_xsub);
        setBars(_xsub);
    }
    function addFooBar (address _caller) public {
        uint _a = 42;
        uint _b = sendToContract(_caller);
        uint _c = mFoo.push(Foo(_a, 3));
        uint _d = mAddresses.push(msg.sender);
        uint _e = getBars();
        uint[] memory _f;
        uint _g;
        uint _h;
        uint _i;
        mappingOfBooleans
