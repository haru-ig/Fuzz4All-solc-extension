pragma solidity ^0.8.0;
contract SolidityAssemblyExample is ISolidityAssemblyExample, IMutatedSolidityAssemblyExample {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    address public e;
    mapping (address => uint) public f;
    constructor(uint Z) public {
        a += Z;
        b += Z + 10;
        c += Z;
        d += Z + 55;
        e = msg.sender;
        f[e] = 321;
    }
    function a(uint Z) public {
        a += Z;
        b += Z;
        c += Z;
        d += Z + 55;
        e = msg.sender;
        f[e] = 321;
    }
    function a() public view virtual returns(uint Z){
        return a;
    }
}
contract TestCall {
    event Log(uint a);
    uint public value = 0;
    uint16[] public list;
    uint public count = 1;
    modifier check(uint _count, uint _amount) {
        if (_count == count) {
            value += _amount;
        } else {
            require(_count == 1);
        }
        _;
    }
    function Test() public {


        list.push(10);
        list.push(75);
        list.push(210);
        list.push(34550);
        list.push(215);
        list.push(215);
        list.push(215);
        list.push(215);
        list.push(215);
        list.push(215);
        list.push(2225);
        list.push(415);
        list.push(415);
        list.push(415);
        list.push(415);
        count = count + 1;


        list.push(10);
        list.push(75);
        list.push(210);
        list.push(34550);
        list.
