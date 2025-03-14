pragma solidity ^0.8.0;


contract MyContract2b is I2b {
    mapping(bytes32 => uint[]) private _data;

    function foo() public virtual view returns (bytes32[] memory){
        return _data;
    }

    function setFoo(bytes32 key, uint[] calldata values) public virtual {
        _data[key] = values;
    }
}
