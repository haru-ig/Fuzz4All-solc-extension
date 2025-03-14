pragma solidity ^0.8.0;
import "./ERC677TokenReceiver.sol";
contract Testing1 {
    mapping(uint256 => string) teststrings;
    event TestStringSet(uint256 indexed tokenId, string teststring);
    event TestEmptyValueSet(uint256 indexed tokenId, uint256 value);
    event Emitted1();
    event Emitted2(uint256 indexed tokenId, int256 value);
    function testStorageAssignment(
        uint256 tokenId1, uint256 tokenId2
    ) public {
        bytes memory buffer1 = "some string";
        bytes memory buffer2 = "some other string";
        (uint256 length1, uint256 length2) = bytes1ToUint256(buffer1);
        (uint256 maxLength1, uint256 maxLength2) = bytes1ToUint256(buffer2);
        {
            (uint256 length1, uint256 length2) = bytes1ToUint256(buffer1);
            (uint256 maxLength1, uint256 maxLength2) = bytes1ToUint256(buffer2);

            emit TestStringSet(tokenId1, "some modified string 1");

        }
        emit TestEmptyValueSet(tokenId2, 0);
        teststrings[tokenId1] = "some modified string 1";
    }
    function getTestString(uint256 tokenId1) public view returns(string memory){
        return teststrings[tokenId1];
    }
    function testFunctionCall(uint256 tokenId1) public {
        bytes memory buffer = "some string";
        (uint256 length, ) = bytes1ToUint256(buffer);
        TestEvent(tokenId1, 123).emit(buffer);
        testFunctionCallSub(tokenId1);
    }
    function testFunctionCallSub(uint256 tokenId1) private {

    }
    constructor() public {}
}
