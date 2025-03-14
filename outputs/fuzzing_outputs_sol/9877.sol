pragma solidity ^0.8.0;
contract Onew {
    function onew(address) public pure returns (uint _b) {

        _b = 3;
        return _b;
    }
}
contract Caller {
    function Caller(address _a,address _b) {}
    function call1(uint _a, uint _b) public payable returns (address,address) {
        Old old = new Old();
        old.old(_b);

        Onew onew = new Onew();
        onew.onew(_a);

        Caller caller = new Caller(_a,_b);
        caller.Caller(_a,_a);
        return (_a,_a);
    }

    function call2() public returns (address,address) {
        Old old = new Old();
        old.old(1);

        Onew onew = new Onew();
        onew.onew(2);

        Caller caller = new Caller(address(this),2);
        caller.Caller(address(this),address(this));
        return (address(this),address(this));
    }
}
