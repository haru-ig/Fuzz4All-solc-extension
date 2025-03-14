pragma solidity ^0.8.0;
contract Test {
    constructor(bool _param) {
        Test[] memory a = new Test[](1);
        a[0] = Test(address(0xAAA));
        bytes memory _b = abi.encodePacked("param");
        bytes memory _b2 = abi.encode(
            "param2", 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        );
        bytes memory data = abi.encodeWithSignature(
            "functionTest2(bytes32 _param2)",
            _b2
        );
    }
}
