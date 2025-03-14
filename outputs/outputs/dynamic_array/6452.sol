pragma solidity ^0.8.0;
import 'i.sol';
interface i1 {
    function m() external payable returns (uint16);
}

pragma solidity ^0.8.0;
contract contracts {
    i[] arr;
    mapping(uint => [bool]) map;
    struct Foo {
        bar bar;
        int baz;
        int quxx;
        mapping(uint => Foo) array_element_map;
    }
    constructor() {
        i[] memory _arr = new i[](0);
        for (uint i = 0; i < 3; i++) {
            arr.push(i1(i));
        }
        for(uint i = 0; i < 3; i++) {
            i = arr[i].m();
        }
        for (uint i = 0; i < arr.length; i++) {
            i += 1;
            i += 2;
            i += 3;
            for (uint j = 0; j < 3; j++) {
                i += 4;
            }
        }
        for (uint i = 0; i < 3; i++) {
            i += 4;
        }
        for (uint i = 0; i < 3; i++) {
            i += 4;
        }
        for (uint i = 0; i < 3; i++) {
            i += 4;
        }
        for (uint i = 0; i < 3; i++) {
            i += 4;
        }
        for (uint i = 0; i < 3; i++) {
            i += 4;
        }
        for (uint i = 0; i < 3; i++) {
            i += 4;
        }
        for (uint i = 0; i < 3; i++) {
            for(uint j = 0; j < 3; j++) {
                arr[i].m();
            }
        }
        for (uint i = 0; i < 3; i++) {
            i += 1;
            if (map[i]["foo"] == false) {
                map[i]["foo"] = true;
            }
            arr[i].m();
            arr[i].m();
            i += 2;
            arr[i].m();
            i += 3;
            for(uint j = 0; j < 3; j++) {
                arr[i].m();
            }
        }
        for (uint i = 0; i < 3; i++) {
            i += 1;
            i += 2;
