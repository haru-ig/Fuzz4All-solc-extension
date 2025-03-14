pragma solidity ^0.8.0;
contract MyContract {
constructor() public { }
uint constant public SOME_CONST = 2323232323;
}
contract Test {

    uint public constant public_variable = 0x2323232323;
    uint internal_variable = 323232323233233223232;
    uint constant external_variable = 32387232323238732323872;
    uint[2] constant array_variable = [232,232] ;
    string public public_string;
    string internal internal_string;
    string constant internal_string_const;
    uint internal_int;

    constructor() {
        public_string = 'Hello';
        internal_string_const = 'Hello';
    }

    function get_internal() public view returns(uint) {
      return internal_variable+external_variable;
    }

    function get_internal2() public view returns(uint, uint, uint) {
     return (internal_variable,external_variable,internal_variable*internal_variable+external_variable);
    }

    function get_internal_via_array() public view returns(uint*,uint*,uint*,uint[]) {
        return (
           &external_variable,
           &internal_variable,
           array_variable,
           [
             (internal_variable),
             (323823),
             (32382889),
             3923+external_variable,
             external_variable*internal_variable+internal_variable*external_variable
           ]
        );
    }
}
