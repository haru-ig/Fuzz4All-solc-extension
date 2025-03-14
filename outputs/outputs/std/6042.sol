pragma solidity ^0.8.0;
interface IConvert {
    function toString(uint8) public pure returns (string memory s);
    function toInteger(string memory s) public pure returns (uint index);
    function toUnsigned(string memory s) public pure returns (uint u);
}

pragma solidity ^0.8.0;
interface IArray2 {
    function add(uint) internal returns (uint);
}

pragma solidity ^0.8.0;
contract ArrayInterface {
    function getLength() public view returns (uint);
    function get(uint _index) public view returns (uint);
    function set(uint _index, uint _val) public;
    function append(uint _val) public;
    function remove(uint _index) public;
}

pragma solidity ^0.8.0;
interface IArray2 {
    function add(uint) public returns (uint);
}
