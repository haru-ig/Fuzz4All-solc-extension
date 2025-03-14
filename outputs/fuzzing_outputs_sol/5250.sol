pragma solidity ^0.8.0;

contract C
{
        receive() external payable {}

        fallback () public payable {}
}

pragma solidity ^0.8.0;
interface I
{
        function f() public;
}
contract A
{
        receive() external payable {}

        function f() external payable {
                I t = I(address(0xd43d247e));
                t.f();
                I s;
                (bool b, bytes memory memoryData) = t.receive(uint256(0));
                bytes memory data;
                (bool, data) = address(s).delegatecall(bytes4(keccak256("f()")), bytes(data));
                bytes memory empty;
                (bool, data) = address(s).delegatecall(bytes4(keccak256("f()")), empty);
                bytes32 hash;
                address contractAddress;
                bytes memory sData;
                (bool, contractAddress, uint, sData, bytes memory sEmpt) = address(s).delegatecall(bytes4(keccak256("f()")), empty);
                (bool, contractAddress, uint, sData, bytes memory sEmpt) = address(s).delegatecall(bytes4(keccak256("f()")), empty);
                (bool, contractAddress, uint, sData, bytes memory sEmpt) = address(s).delegatecall(bytes4(keccak256("f()")), empty);
                (bool, contractAddress, uint, sData, bytes memory sEmpt) = address(s).delegatecall(bytes4(keccak256("f()")), empty);
                (bool, contractAddress, uint, sData, bytes memory sEmpt) = address(s).delegatecall(bytes4(keccak256("f()")), empty);
                (bool, contractAddress, uint, sData, bytes memory sEmpt) = address(s).delegatecall(bytes4(keccak256("f()")), empty);
                (bool, contractAddress, uint, sData, bytes memory sEmpt) = address(s).delegatecall(bytes4(keccak256("f()")), empty);
                (bool, data, bytes memory sEmpt) = address(s).delegatecall(bytes4(keccak256("f()")), bytes(data));
                (bool, data) = address(s).delegatecall(bytes4(keccak256("f()")), empty);
                (bool, data) = address(s).delegatecall(bytes4(keccak256("f()")), empty);
                (bool, data) = address(s).delegatecall(bytes4(keccak256("f()")), empty);
                (bool, data) = address(s).delegatecall(bytes4(keccak256("f()")), empty);
                (bool, empty)
