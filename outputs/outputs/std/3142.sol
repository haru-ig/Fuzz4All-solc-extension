pragma solidity ^0.8.0;
contract Mutations1 {
    address ad_mutated;
    constructor() {
        uint address_temp = 0x1382f45089c290ce82b35ff59f81beec8c4e3d9ca;
        uint8_t char_mutated = 0x25;
        uint_mutated = 0x04a55000000000000000000000000000012;
        uint8_t* data_temp = "Hello Hello, this is a test.".bytes;
        uint_mutated = (2**32).mul(char_mutated).add(*uint_mutated + address_temp);

        mutated.public_function();
        mutated.private_function();
        mutated.pure_function();
        mutated.external_mut_function1();
        mutated.external_mut_function2();
        mutated.external_mut_function3(uint_mutated);

        ad_mutated = mutated.getAddress(108);

        address_temp.add(uint_mutated);









        ad_mutated.call(abi.encodeWithSignature("constant()", address(this)));
        ad_mutated.call(abi.encodeWithSignature("constant()"));
        ad_mutated.call(abi.encodeWithSignature("constant()"));
        ad_mutated.call(abi.encodeWithSignature("stateless()"));
        ad_mutated.call(abi.encodeWithSignature("stateless()"));
        ad_mutated.call(abi.encodeWithSignature("stateless()"));
        ad_mutated.call(abi.encodeWithSignature("external_mut_function1()", address(this)));
        ad_mutated.call(abi.encodeWithSignature("external_mut_function1()"));
        ad_mutated.call(abi.encodeWithSignature("external_mut_function2()", uint_mutated));
    }
    function constant() public constant returns (uint8, uint bytes_to_parse) {
        return (25, "Hello".codeunits);
    }
    function stateless() public pure returns (uint) {
        return 0x050a000000000000000000
