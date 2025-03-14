pragma solidity ^0.8.0;
contract Store {
    string title;
    string genre;
    address author;
    string description = "A short and to the point description for your favourite novel.";
    uint8 id;
    mapping (uint8 => Product) public products;
    uint8 quantity;
    uint8 price;
    constructor (string memory title, string memory genre) public {
    }

    struct Product {
        uint8 idHash;
        string name;
        uint8 priceHash;
    }
}
