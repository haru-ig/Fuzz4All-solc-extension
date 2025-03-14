pragma solidity ^0.8.0;
interface Array {


    function getter(uint index) external view returns (address);


    function setter(uint index, string memory value) external;


    function length() external view returns (uint);


    function search(uint v) external view returns (uint);


    function concat(string memory a, string memory b) public pure returns (string memory);


    function concatu(uint a, uint b) public pure returns (uint);


    function new(uint size, uint index) external view returns (address);


    function value(uint index) external view returns (uint256);


    function deleteall() public;
}

pragma solidity ^0.8.0;
interface Convert {


     function hexa(bytes memory _x) public pure returns (bytes32);


     function hex2dec(bytes memory _x) public pure returns (uint);


     function hex_to_bytes(string memory _hex) public pure returns (bytes memory);


     function dec_to_hex(uint _dec) public pure returns (bytes32);


     function hex2dec(string memory _hex) public pure returns (uint);


     function hex_to_bytes(string memory _hex) public pure returns (bytes memory);


     function dec_to_hex(uint _dec) public pure returns (bytes32);


     function from_hex(bytes memory _x) public pure returns (uint[]);


     function hex2bytes(string memory _hex) public pure returns (bytes memory);


     function dec_to_hex(uint _dec) public pure returns (bytes32);
}

pragma solidity
