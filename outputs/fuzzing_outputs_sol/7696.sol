pragma solidity ^0.8.0;
contract Caller
{
    bytes public myData;
    constructor(bytes memory _data)
    public { myData = _data; }
    function call() public {}
}


pragma solidity ^0.8.0;
contract TestCaller {


    function setFallbackFunction() public {}
    constructor() public {
        bytes memory _contractData = abi.encodeWithSignature
        ("setFallbackFunction()");
        Caller(
            abi.encodeWithSignature(
                "receive(uint256)",
                100
            )
        ).call{value: 100 + 3}(
            _contractData
        );
        }
}

pragma solidity ^0.6.0;
interface IERC165 {
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}

pragma solidity ^0.6.0;
contract TestERC165 {
    function setInterface() public {}
    function supportsInterface1() public pure returns (bytes4) {return 0x00000000;}
    function supportsInterface2() public pure returns (bytes4) {return 0x000ea507;}
    function supportsInterface3() public pure returns (bytes4) {return 0x16206556;}
    function supportsInterface4() public pure returns (bytes4) {return 0x01234567;}
    constructor() public { }
