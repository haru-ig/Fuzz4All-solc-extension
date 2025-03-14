pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
    struct Book {
        string title;
        uint8 authorHash;
        uint8 category;
        string author;
    }
    function update() public {
    }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
    address[] public authors;
    mapping(address => uint[]) public books;
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
    function addBook(string calldata _title, uint8 calldata _authorHash, uint8 calldata _category, string calldata _author, uint8 calldata _length) public {
        uint storedLength;
        address[] storage storeLength;
        (storedLength, ) = storeLength.lengthAndAddress();
        authors.push(_author);
        storeLength.push(authors.length);
        books[_author].push(_length);
        Book memory newBook = Book({_author:_author, _category:_category, _title:_title, _authorHash:_authorHash});
        books[require(storeLength.length > authorHash)._address][storeLength.length-1].push(newBook.title.length);
        books[require(storeLength.length > authorHash)._address][storeLength.length-1].push(newBook.author.length);
    }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
    function addBook(string memory _title, uint8 memory _authorHash, uint8 memory _category, string memory _author, uint8 calldata _length) public {
        uint storedLength;
        address[] storage storeLength;
        uint lengthWithoutAuthor;
        (storedLength, ) = storeLength.lengthAndAddress();
        uint newlengthWithoutAuthor;
        require(storeLength.length > authorHash);
        address[] storage result;
        for (uint i; i < storeLength.length; i++) {
            result = store[storeLength.length-i];
            for (newlengthWithoutAuthor = 0; newlengthWithoutAuthor < storeLength.addressLength[result[i]].length; newlengthWithoutAuthor++) {
                if (books[result[i]][newlengthWithoutAuthor][storeLength.addressLength[result[i]][newlengthWithoutAuthor]].length == newlengthWithoutAuthor + 5) {
                    for (lengthWithoutAuthor = storeLength.addressLength[result[i]][newlengthWithoutAuthor]; lengthWithoutAuthor >= 5; lengthWithoutAuthor--) {
                        require(storeLength.addressLength[result[i]][newlengthWithoutAuthor-1] > newlengthWithoutAuthor - 5);
                    }
                }
            }
        }

        address[] storage storeResult;
        for (uint j; j < storeLength.length; j++) {
            storeResult = store[storeLength.length-j];
            store[storeLength.length-j].
