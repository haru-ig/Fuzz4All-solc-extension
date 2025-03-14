pragma solidity ^0.8.0;
contract Example9 {
    function _fallback(uint _value) public payable {}
    function add(uint x, uint y) public pure returns (uint) {
        uint sum = 0;
        return x + y;
    }
}
pragma solidity ^0.8.0;
contract Example10 {
    function _fallback() public payable {}
    function add(uint x, uint y) public pure returns (uint) {
        uint sum = 0;
        return x + y;
    }
}

pragma solidity ^0.8.0;
contract Example11 {
    address private _contract;
    event EtherSent(address contractAddress, uint value, bytes32 dataHash);

    function __Example11_init(address _contractAddress) public {
        _contract = _contractAddress;
    }

    function _fallback(uint _value, bytes memory _data) public payable {}
    function add(uint x, uint y) public pure returns (uint) {
        uint sum = 0;
        return x + y;
    }

    receive () external payable {

        bytes32 dataHash = keccak256(abi.encodePacked(msg.sender, msg.value, _contract));
        emit EtherSent(address(this), msg.value, dataHash);
    }
}
