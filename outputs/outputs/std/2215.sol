pragma solidity ^0.8.0;
interface Mutation {
    function set() public;
    function get() public view returns(address);
}
interface M {
    bytes get() external view returns(uint);
}
contract M2 is Mutation{
    address m;
    constructor(address Maddr){
        m = Maddr;
    }


    function set() public {
        m.call(abi.encodeWithSignature("set_bar()"));
    }
    function get() public view returns (address) {
        return m.call(abi.encodeWithSignature("get_bar()"));
    }
}
contract MutationC {
    function test1() public {
        bytes calldata mybytes;
        MutC mutc = new MutationC();
        bytes memory input = bytes.from("Hello World");

        mutc.set(abi.encodeWithSignature("set_bar()"));
        bytes memory output = mutc.get();
        bytes memory expected = bytes('<KEY>');
        assert(keccak256(abi.encode(input, expected)) == keccak256(output), "Output does not match");

        uint bar = mutc.getBar();
        uint256 bar2 = 4294967295;
        bytes memory barBytes = abi.encode(bar, bar2);
        assert(keccak256(barBytes) == keccak256(MutC(m2).get()), "Previous state does not match");
    }
    function test2() public {
        bytes memory a;
        bytes[1] memory array;

        a = 1;
        array = [4,7,1};

        assert(x == abi.encode(a, array)[0], "Initial get result does not match set");

        MutC mutc = new MutationC();
        mutc.set(abi.encodeWithSignature("set_bar()"));
        bytes memory b = mutc.get();
        uint a2 = mutc.getBar();
        assert(abi.decode(a, uint)[0] == 1, "First get did not read back the original value");
        assert(abi.decode(a2, uint)[0] == 3, "Second get did not read back the modified value");
        assert(abi.decode(b, uint)[0] == 5, "Third get did not modify the original");

        bytes[] memory input = new bytes[](2);
        input[0
