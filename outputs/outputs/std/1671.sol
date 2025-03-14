pragma solidity ^0.8.0;

address constant TEST_CONTRACT_ADDRESS = 0x8314ab85D79A4Ad06F7B45A852B17117A342c225;
interface IConvert {
    function toUint(string memory _input) external pure returns(uint);

    function toUint(bool _input) external pure returns(uint);

    function toUint(bytes32 _input) external pure returns(uint);

    function toUint(address _input) external pure returns(uint);
    function toBoolean(string memory _input) external pure returns(bool);

    function toBoolean(bool _input) external pure returns(bool);

    function toBoolean(bytes32 _input) external pure returns(bool);

    function toBoolean(address _input) external pure returns(bool);
    function toAddress(string memory _input) external pure returns(address);

    function toAddress(bool _input) external pure returns(address);

    function toAddress(bytes32 _input) external pure returns(address);

    function toAddress(address _input) external pure returns(address);


    function toBytes32(string memory _input) external pure returns(bytes32);

    function toBytes32(bool _input) external pure returns(bytes32);

    function toBytes32(bytes32 _input) external pure returns(bytes32);

    function toBytes32(address _input) external pure returns(bytes32);
    function toString(uint _input) external pure returns(string memory);

    function toString(bool _input) external pure returns(string memory);

    function toString(bytes32 _input) external pure returns(string memory);

    function toString(address _input) external pure returns(string memory);


    function toUint(uint _input) external pure returns(uint);

    function toUint(bool _input) external pure returns(uint);

    function toUint(bytes32 _input) external pure returns(uint);

    function toUint(address _input) external pure returns(uint);


    function toAddress(uint _input) external pure returns(address);

    function toAddress(bool _input) external pure returns(address);

    function toAddress(bytes32 _input) external pure returns(address);

    function toAddress(address _input) external pure returns(address);

    function toString(uint _input) public pure returns(string memory);

    function toString(bool _input) public pure returns(string memory);

    function toString(bytes32 _input) public pure returns(string memory);

    function toString(address _input) public pure returns(string memory);
}
