pragma solidity ^0.8.0;
contract CallerExample21 {
    mapping (bytes32 => uint) public map_data;
    uint[] public map_data_data;
    function fallback(uint _value) public payable {
        map_data_data.push(_value);
        map_data[keccak256(abi.encodePacked(map_data_data.length))] = _value;
    }
}

pragma solidity ^0.8.0;
contract CallerExample22 {
    function transfer(address addr, uint value) public returns(bool){
        return addr.send(value);
    }
}

pragma solidity >=0.4.22 <0.9.0;
contract CallerExample {
    function fallback(uint256 a) public {
        a.transfer(address(this));
    }
}
