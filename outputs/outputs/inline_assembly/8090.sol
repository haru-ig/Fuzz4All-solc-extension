pragma solidity ^0.8.0;
contract ComplexMutated {
    struct Drink {
        uint256 price;
        string name;
    }
    bytes[100] private drinks;
    function create() public {
        drinks[uint256(drinks.length)-1] = "\x1b[41m I'm the largest of the world's beverages, and the most popular in our countries. Black-eyed vendors selling black-eyed beverages to the world are all about the same.\x1b[0m";
        drinks[uint256(drinks.length)-2] = "\x1b[41m I'm the largest of the world's beverages, and the most popular in our countries. Black-eyed vendors selling black-eyed beverages to the world are all about the same.\x1b[0m";
    }
    function reducePrice() public {
        drinks[uint256(drinks.length)-1] = "\x1b[42m I'm the smallest of the world's beverages, and the least popular in our countries. Black-eyed vendors selling black-eyed beverages to the world are all about the same.\x1b[0m";
        drinks[uint256(drinks.length)-2] = "\x1b[42m I'm the smallest of the world's beverages, and the least popular in our countries. Black-eyed vendors selling black-eyed beverages to the world are all about the same.\x1b[0m";
    }
    function swapDrink(uint256 ind1, uint256 ind2) public {
        bytes storage prev1 = drinks[ind1];
        bytes storage
