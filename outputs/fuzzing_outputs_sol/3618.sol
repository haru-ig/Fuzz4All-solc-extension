pragma solidity ^0.8.0;
contract MutateSemantic6Caller5 {
    struct Borrower {
        address borrower_;
        uint16 balance_;
    }
    event Lend(address borrower_, uint16 loan_, uint256 amount_);
    function modifyC(uint borrower_, uint loan_, uint256 amount_) public returns (bool) {
        Borrower storage borrowed = borrowers_[borrower_];
        require(borrowed.borrower_ == address(uint160(0)), "borrower already owns");
        borrowed.borrower_ = msg.sender;
        borrowed.balance_ += loan_ * amount_;
        emit Lend(borrower_, loan_, amount_);
        return true;
    }
    mapping(address => Borrower) public borrowers_;
    function lend(uint borrower_, uint loan_, uint256 amount_) public nonpayable returns (bool) {
        return modifyC(borrower_, loan_, amount_);
    }
    function borrow(uint balance_) public returns (uint256) {
        Borrower storage borrowed = borrowers_[msg.sender];
        delete borrowers_[msg.sender];
        borrowed.balance_ -= balance_;
        return balance_;
    }
}
