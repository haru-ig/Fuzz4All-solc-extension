pragma solidity ^0.8.0;
interface IGrandcaller {
    function call(uint256 _id) external;
    function mut(uint256 _id) external;
}
contract Grandcaller10 is IGrandcaller {
    constructor() {}
    function call(uint256 _id) public {
        uint256 _value = _id - 1;
        assert(_value == 0 || _value!= 2);
    }
    function mut(uint256 _id) public {
        uint256 _value = _id - 1;
        assert(_value == _id - 2, _id);
    }
}
