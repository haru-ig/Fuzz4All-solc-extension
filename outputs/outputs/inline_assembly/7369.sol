pragma solidity ^0.8.0;
contract Equivalent_assembly_modified {
    uint constant constant1 = 10;
    uint constant constant2 = Equivalent_assembly.constant1 + 1;
    uint constant constant3 = Equivalent_assembly.constant2 + 1;
    uint constant constant4 = Equivalent_assembly.constant3 + 1;

    function Equivalent_assembly_modified() {

    }


    function() external payable {

        uint new_constant1 = Equivalent_assembly.constant1 + 1;

        uint new_constant2 = Equivalent_assembly.constant2 + Equivalent_assembly.constant1;

        uint new_constant3 = new_constant1 + 1;
        uint total_constant = Equivalent_assembly.constant1 + Equivalent_assembly.constant2;

        uint new_constant4 = 13;
    }

    function test() external payable {
        uint total_constant = Equivalent_assembly.constant1 + Equivalent_assembly.constant2;
        uint to_be_incremented_constant = Equivalent_assembly.constant1 + Equivalent_assembly.constant2;
        uint new_constant1 = Equivalent_assembly.constant1 + Equivalent_assembly.constant1;
        new_constant2 = to_be_incremented_constant;
        updateConstant1();

        updateConstant(to_be_incremented_constant);

    }

    function updateConstant1() public{
        uint new_constant1 = Equivalent_assembly.constant1 + 1;
    }

    function updateConstant( uint constant ) public{
        constant = 1 + constant;
    }
}
