pragma solidity ^0.8.0;
contract Caller {
    Grandcaller8 public g;
    constructor() {
    }
    function test() public {
        g.call(1);
        g.mut(1);
    }
    function getResult(uint256 _id) public view returns (uint256) {
        uint256 _value = _arr[_id];
        require(_value!= 1, '1');
        return _value;
    }
}
