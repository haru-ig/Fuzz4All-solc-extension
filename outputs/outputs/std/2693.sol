pragma solidity ^0.8.0;
contract MyContract { }

pragma solidity ^0.8.0;
contract MyContract is Ownable { }




pragma solidity ^0.8.0;
import "./Array.sol";
contract MyContract {
    Array.Uint array;
    function GetAddress(uint _id) public view returns(address, uint);
    function GetArray(uint _id) public view returns(address[], uint);

    function TestGetAddress(uint _id) public returns(address, uint) {
        address address, value, index;
        address[] storage addresses;
        addresses = GetAddress(_id);
        address = addresses[_id];
        address = GetAddress.value(1)(_id);

        address = 0;
        return (address, value, _id);
    }
    function TestGetArray(uint _id) public returns(address[], uint) {
        address[] storage addresses;
        address[] memory addresses1;
        uint[] storage values;
        string memory strings;
        uint[] memory values1;
        string memory strings1;
        address[] memory addresses2;
        address[] memory addresses3;
        uint[] memory values2;
        uint[] memory values3;
        address[] memory addresses4;
        address[] memory addresses5;
        uint[] storage values4;
        string[] storage strings3;
        uint[] storage values5;
        string[] storage strings4;
        Array.Uint storage array1;
        Array.Uint storage array2;
        int array3[0];
        uint[] memory array4_1;
        string[][] memory array5;
        uint[] memory array5_1;
        uint array6[0];
        address[] memory array6_1;
        address address7;
        bytes memory bytes;
        bytes memory bytes1;
        address address8;
        bytes[] memory bytesa;
        bytes[] memory bytesb;
        uint[] memory values6;
        uint array7_[0];
    }
}
