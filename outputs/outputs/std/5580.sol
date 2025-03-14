pragma solidity ^0.8.0;
contract Mutate66{
    address[] fooArr;
    mapping(address => bool) booBoo;
    function addArrElement(uint256 arg1_in) public {
        require(fooArr.length==1,"1");
        fooArr.push(arg1_in);
    }
    function addElement(uint256 arg0_in) public {
        fooArr[0] = arg0_in;
    }
    function updateAddressArrElement(uint256 arg0_in, uint256 arg1_in, uint256 arg2_in, uint256 arg3_in) public {
        uint256 elem_pos_a1 = uint256(arg0_in);
        bool elem_pos_a3 = bool(arg1_in);
        require(elem_pos_a1 == elem_pos_a3, "4");
        uint256 elem_pos_a2 = uint256(arg2_in);
        uint256 elem_pos_a0 = uint256(arg3_in);
        fooArr[elem_pos_a0] = elem_pos_a2;
    }
    function updateBoolArrElement(uint256 arg0_in, bool arg1_in) public {
        uint256 elem_pos = uint256(arg0_in);
        booBoo[elem_pos] = arg1_in;
    }
    function printAddressArrElements() public {
        for (uint256 i=0;i<fooArr.length;i++)
            println(fooArr[i]);
    }
    function printBoolArrElements() public {
        for (uint256 i=0;i<booBoo.length;i++)
            println(booBoo[i]);
    }
}
