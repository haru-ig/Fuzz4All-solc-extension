pragma solidity ^0.8.0;
interface IERC165 { function supportsInterface(bytes4 interfaceId) external view returns (bool) }

pragma solidity =0.8.0;

contract ProxyFactory {
    struct Proxy{
        uint8 v;
        bytes32 r;
        bytes32 s;
        uint deadline;
        address implementation;
        uint32 nonce;
        bool immutable;
    }
    Proxy[] internal proxies;
    Proxy[] internal proxySet;
    mapping(uint256 => address) internal _byEIP;

    constructor() {
        proxies.push(Proxy({
            v: 0,
            r: bytes32(0),
            s: bytes32(0),
            deadline: 0,
            implementation: 0,
            nonce: 0,
            immutable: true
        }));
        setProxy(
            { v: 0, r: bytes32(0), s: bytes32(0), deadline: 0, implementation: 0, nonce: 0, immutable: true },
            0
        );
    }

    function createProxy(
        bytes memory _interfaceId,
        bytes32 _proxyCallerAddress,
        bytes memory _proxyCallData
    ) public returns (address) {
        uint256 num = proxySet.push(Proxy({
            deadline: block.timestamp + 0.1,
            v: 0x01,
            r: bytes32(keccak256(abi.encode(ProxyFactory.getSelector(msg.sender, _interfaceId))))),
            s: bytes32(abi.encodePacked(
                keccak256(abi.encodePacked("\x19EIP253", _interfaceId))
            )),
            implementation: _proxyCallerAddress,
            nonce: totalEIPCount(),
            immutable: true
        })).sub(1);
        _byEIP[num] = _proxyCallerAddress;
        return address(num);
    }

    function getSelector(
        address _instance,
        bytes memory _interfaceId
    ) internal pure returns (bytes4) {
        if (_interfaceId.length == 4 && bytes(abi.encodePacked(
            '\x19\x01',
            keccak256(abi.encode(
                '\x01',
                '\x01',
                '\x00',
                '\x03',
                _interface
