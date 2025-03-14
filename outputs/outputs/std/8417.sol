pragma solidity ^0.8.0;
contract ArrayMutationsAis6An {
    uint[] private _nums;
    uint private _count;
    function getCount() public returns (uint) {
        return _count;
    }
    function getOne(uint i) public view returns (uint) {
        return _nums[i];
    }
    modifier check {
        require(true, "Not a valid array modification");
        _;
    }
    function _push(uint x) private check {
        _nums.push(x);
    }
    function push1(uint x) private check {
        _push(x + (100));
    }
    function push2(uint x) private check {
        _push(x * 4);
    }
    function get(uint i) public view returns (uint) {
        return _nums[i];
    }
    function set(uint i, uint x) public check {
        _nums[i] = x;
    }
}
