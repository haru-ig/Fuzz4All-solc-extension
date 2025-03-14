pragma solidity ^0.8.0;
interface IConvert1 {
    function toString(uint  ) external pure returns (string memory);
    function to_int(uint  ) external pure returns (uint );
    function from_int_to_string(int  ) external pure returns (string memory);
}
