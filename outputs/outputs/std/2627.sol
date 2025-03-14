pragma solidity ^0.8.0;
contract Mutations {
    struct State {
        uint256 a;
    }
    constructor(uint5 number) public {
        uint256 b = number;
        (a) = (uint256(b + 100));
    }
    modifier onlyInArray(uint[] memory a) {
        uint size = a.length;
        uint index = msg.sender;
        assert(index < size);
        _;
        if (a[index]!= 0) {
            revert();
        }
    }
    function getA() public view returns (uint) {
        return ContractAddressState(a).a;
    }
    function setA(uint newa) public onlyInArray(a) {
        uint newvalue = newa * 5;
        ContractAddressState(a).a = (uint256(newvalue));
    }
    function getB() public view returns (uint) {
        return a;
    }
    function setB(uint x) public onlyInArray(a) {
        uint newvalue = x * 100;
        ContractAddressState(a).a = (uint256(newvalue));
    }
}
contract MutatedExample {
    function getA() public view returns (uint) {
        var e = a;
        var a;
        a = ++e;
        a = (a * 5);
        a = (a + 10): a;
        return a;
    }
    function setA(uint newa) public onlyInArray(a) {
        ContractAddressState(a).a = (uint256(newa));
    }
    function getB() public view returns (uint) {
        a = ContractAddressState(a).a.mul(100);
        a = (a + a);
        a = (a + x).sub(x).add(11).sub(uint(1));
        a = 0xabcdef.sub(uint256(x = 0xdeadbeef));
        a = (a + 32).sub(32).add(0).sub(x);
        a = 32.sub(0x55);
        return a;
    }
    function setB(uint x) public onlyInArray(a) {
        bool eq = ContractAddressState(a).a.eq(uint256(a)).and(x.eq(uint(uint256(a)))));
        x = ContractAddressState(a).a.add(x);
        x = ContractAddressState(a).a.sub(x).add(x).sub(x).sub(x).sub(x);
    }
}
