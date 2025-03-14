pragma solidity ^0.8.0;
contract HelloWorld_08 {
    constructor(IERC20 payable _token) {

        _token.mint(_msgSender(), 10);
        _token.mint(_msgSender(), 18);
        _token.mint(_msgSender(), 12);
        _token.mint(_msgSender(), 90);
        _token.mint(_msgSender(), 126);
        _token.mint(_msgSender(), 5);
        _token.mint(_msgSender(), 40);
        _token.mint(_msgSender(), 180);
        _token.mint(_msgSender(), 7000);
        _token.mint(_msgSender(), 127);
        _token.mint(_msgSender(), 1);
        _token.mint(_msgSender(), 500);
        _token.mint(_msgSender(), 50);
        _token.mint(_msgSender(), 10);
        _token.mint(_msgSender(), 122);
        _token.mint(_msgSender(), 0);
        _token.mint(_msgSender(), 480);
        _token.mint(_msgSender(), 16);
    }
}
