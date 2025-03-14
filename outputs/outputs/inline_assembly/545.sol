pragma solidity ^0.8.0;
contract InlineAssemblySemanticDifferent {
    mapping(address => bool) authors;
    function canModifyAuthor(address x) public returns(bool) {
        return authors[x];
    }
    function testMethod() public pure returns(bool) {
        address author;
        assembly {
            let author := mload(0)
            mstore(0, author)
            author := author
        }
        return canModifyAuthor(author);
    }
}
