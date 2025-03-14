pragma solidity ^0.8.0;
contract A {
    bytes32 constant _hash = "31283320482452017497526956410794395669466413279855193893414058";

    bytes32 private _hash0;
    mapping(uint256 => uint256) public _arr;
    address _addr;

    function g() public view returns (uint256) {
        uint256 x = _arr[0];
        uint256 y = _arr[1];
        return _hash0;
    }

    function f() public view returns (uint256) {
        return _arr[_addr];
    }

    function setAddr(address x) public {
        _addr = x;
    }

    function getAddr() public view returns (address) {
        return _addr;
    }

    function _hash1() private view returns (bytes32) {
        return keccak256(abi.encode((_hash, address(this).balance)));
    }

    function set(uint256 x) public {
        uint256 x1 = x;
        _arr[1] = x1;
    }

    function test_setWithMem() private {
        setMem();
    }

    function setMem() public {
        _arr[address(this)] = 0;
        _arr[0] = 0;
        _arr[1] = 1;
        _addr = address(this);
    }
}
contract A {
    bytes32 constant _hash = "26193911187940566975641630996049986607908353226385862937933544";

    uint256 private _arr[2];

    bytes32 private _hash0;
    address _addr;

    function g() public view returns (uint256) {
        uint256 x = _arr[0];
        uint256 y = _arr[1];
        return _hash0;
    }

    function f() public view returns (uint256) {
        return _arr[_addr];
    }

    function setAddr(address x) public {
        _addr = x;
    }

    function getAddr() public view returns (address) {
        return _addr;
    }

    function _hash1() private view returns (bytes32) {
        return keccak256(abi.encode((_hash, abi.encode(_arr), address(this).balance)));
    }

    function set(uint256 x) public {
        uint256 x1 = x;
        _arr[1] = x1;
    }

    function test_setWithMem() private {
        setMem();
    }

    function setMem() public {
        _arr[address(this)]
