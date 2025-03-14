pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract test {
    struct testStruct {
        bytes4 a4;
        uint16 a5;
        bytes6 a6;
    }

    function test42(
        bytes32 _firstWord
    ) public view {
        testStruct memory t;
        (t.a4, t.a5, t.a6) =
        abi.decode(_firstWord, (bytes4, uint16, bytes6));
        require(t.a4 == abi.decode(_firstWord, (bytes4)),'string[349]');
    }
}
