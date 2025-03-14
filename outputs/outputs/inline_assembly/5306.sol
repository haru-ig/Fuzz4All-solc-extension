pragma solidity ^0.8.0;
uint64 constant initIB = 1;
uint64 constant IB;
contract Q {
    uint64 IB2;
    uint64 IB3;
    constructor() public {
        IB3 = IB * IB2;
        IB2 = IB2 + IB;
    }
    function update() public {
        IB -= IB2;
        IB2 += IB * IB2;
        IB3 += IB;
    }
}
contract S {
    function update(uint64 _a, uint64 _b) external {
        IB = _a * _b;
        IB3 = _b;
        IB2 = _a;
    }
}
contract Reentrancy {
    uint16[16] public iv;
    uint16 i;

    function reset() public {
        i = 0;
    }
    function set(uint16 _i) onlyOwner public {
        iv[i++] = _i;
    }

    function get() public view returns (uint16) {
        return iv[i - 1];
    }
}
contract Gas {
    modifier s1 {

        _;
    }
    function gas() public view returns (uint64) {
        uint256 _gasleft = block.gaslimit - block.timestamp;
        uint256 _gasused = block.gasused;
        uint64 _gas = uint64(uint256(_gasused) / uint256(uint256(_gasleft)));
        return _gas;
    }
}
contract Fee {
    function call(address _to, uint _value, bytes memory _data) public returns (uint);
}
contract Ownable {
    address public owner;
    mapping (address => bool) public allowed;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    constructor() public {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    function transferOwnership(address _newOwner) public onlyOwner {
        emit OwnershipTransferred(owner, _newOwner);
        owner = _newOwner;
    }

    function transferOwnershipAndCall(address _newOwner, bytes calldata _data) public onlyOwner returns (bytes memory) {
        emit OwnershipTransferred(owner, _newOwner);
        owner=_newOwner;
        uint256 i;
        bytes memory _return;
        assembly {
            let len := mload(_data)
            let offset := add(_data, 32)

            i := mload(offset)
            _return := mload(
