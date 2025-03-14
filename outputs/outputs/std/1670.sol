pragma solidity ^0.8.0;
interface IConvert {
    function addressToBytes(address _from, address _to, uint _amount) external payable;
    function bytesToAddress(address _from, address _to, bytes memory _amount) external view;
    function stringToBytes(address _from, address _to, string memory _amount) external;
    function bytesToString(address _from, address _to, bytes memory _amount) external view;
    function uintToBytes(address _from, address _to, uint _amount) external;
    function bytesToUint(address _from, address _to, bytes memory _amount) external view;
    function stringToUint(address _from, address _to, string memory _amount) external;
    function bytesToStringToUint(address _from, address _to, bytes memory _amount) external view;
    function uintToAddress(address _from, address _to, uint _amount) external;
}

pragma solidity ^0.8.0;
interface IMath {
    function div(uint _a, uint _b) external pure returns (uint);
    function add(uint _x, uint _y) external pure returns (uint);
    function mul(uint _x, uint _y) external pure returns (uint);
    function sqrt(uint _a) external pure returns (uint);
}
