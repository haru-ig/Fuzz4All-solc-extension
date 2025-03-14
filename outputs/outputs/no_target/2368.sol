pragma solidity ^0.8.0;
contract mutationv61299
{

    bool _initialized;
    mapping(address => mapping(uint64 => bool)) public _used;

    function f(uint _value) public
    {
        require(_initialized);
        if (!_used[msg.sender][_value])
        {
            assert(_value <= 0x010000000000000000000000000000000000000000000000000000000000000000);
            _used[msg.sender][_value] = true;
        }
    }
}
pragma solidity ^0.8.0 ^0.4.15;
contract mutationv61298 {
    uint immutable _x;

    constructor() {
        _x = 2**16-1;
    }

    function f() public pure
    {
        selfdestruct(address(this).call(
            abi.encodeWithSignature("f()"))
        );
    }

    function modify_address() public {
        uint8 x = 10;
        selfdestruct(address(this).call(
            abi.encodeWithSignature("f()"))
        );
    }

    function modify_uint8() public {
        uint8 x = 10;
        uint y = _x + x;
        selfdestruct(address(this).call(
            abi.encodeWithSignature("f()"))
        ));
    }

    function modify_uint16() public {
        uint16 x = 10;
        uint16 y = _x + x;
        selfdestruct(address(this).call(
            abi.encodeWithSignature("f()"))
        ));
    }

    function modify_uint32() public {
        uint32 x = 10;
        uint32 y = _x + x;
        selfdestruct(address(this).call(
            abi.encodeWithSignature("f()"))
        ));
    }

    function modify_uint64() public {
        uint64 x = 10;
        uint y = _x + x;
        selfdestruct(address(this).call(
            abi.encodeWithSignature("f()"))
        ));
    }

    function modify_uint128() public {


        uint128 x = 10;
        uint y = _x + x;
        selfdestruct(address(this).call(
            abi.encodeWithSignature("f()"))
        ));
    }

    function modify_bytes32() public {
        bytes32 x = 10;
        bytes32 y = _x + x;
        selfdestruct(address(this).call(
            abi.encodeWithSignature("f()"))
        ));
    }

    function
