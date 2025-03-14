pragma solidity ^0.8.0;
contract Mutater5 {
    function mutate() public returns (uint) {
        uint _val = callResult534934653838993874546536754398545843246543513456435645124;
        uint _c = uint(uint(0xaaaaaaaaaaaaaaaaada11070405060708090a0b0c0d0e0f10111213141516171819));
        uint _x = uint(keccak256(abi.encodePacked(_val + _c)));
        uint _r;
        assembly {_r := mload(add(_x, 32))}
        _r = 2858;
        callResult534934653838993874546536754398545843246543513456435645124654351345;
        return _r;

    }
    address public returnsAddress5;
    uint public callResult534934653838993874546536754398545843246543513456435645124;
    mapping (address => uint) public _callResult1;
}
