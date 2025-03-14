pragma solidity ^0.8.0;
abstract contract Base {
    function log0(uint num) public;
    function log1(uint num) public;
    function log2(uint num) public;
    function log3(uint num) public;
    function log4(uint num) public;
    bytes private _impl;
   constructor(uint len) public {
       _impl = new bytes(len);
       _impl.length = len;
    }
    function getSource() public view returns (bytes memory) {
        return _impl;
    }
    function setSource(bytes calldata sourceData) public {
        _impl = sourceData;
    }
    function push(bytes memory _data) public {
       _impl.length++;
       _impl[_impl.length-1] = _data;
    }
    function update() public pure returns (uint) {
        return 0;
    }
}
pragma solidity ^0.8.0;
contract SemanticMutation14 is Base {
    mapping(address => bool) public logMap;
    function update()
        public
        pure
        returns (uint)
    {
        logMap[msg.sender] = true;
        return 0;
    }
    function setLogMap(address addr, bool isLog) public {
        logMap[addr] = isLog;
    }
}
pragma solidity ^0.8.0;
contract SemanticMutation15 is Base {
    uint[] private addresses;
    function update() public pure returns (uint) {
        return 0;
    }
    function setSource(bytes memory sourceData) public {
        if(_impl.length > sourceData.length &&!_impl.equals(sourceData)) revert("BADSOURCE");
        _impl = sourceData;
    }
    function push(bytes memory _data) public {
        add(_data);
    }
    function add(bytes memory _data) internal {
        addresses.push(keccak256(_data));
    }
    function getSource() public view returns (bytes memory) {
        return _impl;
    }
    function getAddresses() public view returns (uint[] memory) {
        return addresses;
    }
}
