pragma solidity ^0.8.0;
contract C {
    uint[] data2;
    uint[] data;

    mapping(uint => uint) map;
    function f() public {
        data = new uint[](4);
        uint[] memory new_data2 = new uint[](data2.length + 1);
        uint[] memory new_data = new uint[](data.length + 1);
        for(uint i = 0; i < data2.length; i++){new_data2[i] = data2[i];}
        new_data2[new_data2.length - 1] = 5;
        for(uint i = data2.length; i < data2.length + new_data2.length; i++){new_data[i] = i;}
        for(uint i = 0; i < new_data.length; i++){new_data[i + 1] = 2 + i*(new_data[i]);}
        data2 = new_data2;
        new_data2 = new uint[](3);
        new_data2[2] = 99;
        data = new_data;
    }
}

pragma solidity ^0.8.0;


import {IERC721} from "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import { IERC
