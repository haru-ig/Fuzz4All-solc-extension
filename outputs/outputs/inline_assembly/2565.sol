pragma solidity ^0.8.0;
contract Comp7 {
    uint256 public _internalStorage;
    function __Comp7_init() internal pure returns (uint256) {
        return 0;
    }
    constructor(uint256 _internalStorage) public {
        _internalStorage = _internalStorage;
    }
    function get() public view returns (uint256) {
        return _internalStorage;
    }
    function add(uint256 _b) internal {
        _internalStorage =  _internalStorage + _b;
    }
    function test() public {
        add(1);
    }
    function test2() public {
        add(2);
    }
}

{% endhighlight %}
