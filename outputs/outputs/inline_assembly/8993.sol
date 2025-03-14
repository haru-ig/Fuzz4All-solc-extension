pragma solidity ^0.8.0;
contract EquivalentSolidity5
{
    struct Y
    {
        uint256 x;
    }
    struct A
    {
        mapping(address => Y) public mymap;
        function set(address addr, Y memory element) public {
            mymap[addr] = element;
        }
        function get(address addr) public view returns(Y memory) {
            return mymap[addr];
        }
    }
    using A for A.uint256;
    A.uint256 internal mymapping;
    function doSomething() public{
        mymapping.set(mymapping.get(msg.sender), Y(12));
    }
    function doSomething2() public{
        if (mymapping.get(msg.sender)) {
            X memory v = mymapping.get(msg.sender);
            mymapping.set(msg.sender, v);
        }
    }
    function doSomething3() public{
        uint256 x = _a;
        if (_a >= 0) {
            _b = 1;
            _c = 9;
        }
    }
}
