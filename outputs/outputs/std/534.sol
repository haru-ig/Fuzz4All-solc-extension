pragma solidity ^0.8.0;


interface IERC712Receiver {
    function onERC712Received(
        address operator,
        address from,
        uint256 tokenId,
        bytes calldata data
    ) external returns (bytes4);
}

pragma solidity ^0.8.0;


contract ArrayTester {

    function getArray(uint256 size) public returns (uint256[] memory) {
        return new uint256[](size);
    }

    function getArrayFromURI(uint256 size) public returns (uint256[] memory) {


        string memory contents =
            FileUtils.readFile("./assets/sample-array.json");
        IERC712 jsonInterface = IERC712(0x69b01fFeDfE6F32c7A7b254b821A8227F30b1390);
        bytes4 interfaceId = 0x80ac58cd;
        if (jsonInterface.supportsInterface(interfaceId)) {
            (bytes32 name, bytes32 symbol, uint256 tokenCount, uint256) =
                jsonInterface.interfaceNames(interfaceId);
            if (name == "IERC712") {
                bytes memory data = FileUtils.readFile("./file.json");
                return (
                    abi.decode(data, (uint256[]))
                );
            }
        }
        revert();
    }

    function setArray(uint256[] memory element) public {
        element[1] = 3;
    }

    function setURIArray(bytes32 name, bytes32 symbol, uint256 size, uint256[] memory element) public {


        IERC712 token = IERC712(0x69b01
