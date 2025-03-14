pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample75 {
    struct Book {
        uint32 id;
        string title;
        bytes _text;
    }
    mapping (uint256 => Book) private _bookList;

    function getBook(uint256 id) public view returns (Book memory) {
        Book memory _book = _bookList[id];
        return _book;
    }

    function addBook(string memory _title, bytes memory _text) public {
        _bookList[createId()] = Book(_bookList[createId()].id + 1, _title, _text);
    }

    function deleteBook(uint256 id) public {
        _bookList[id].id = 0;
    }

    function createId() public pure returns (uint256) {
        return (uint256(keccak256(abi.encodePacked(blockhash(transactionLogIndex()), block.number))) % m_maxId);
    }

    uint256 m_maxId;
}
