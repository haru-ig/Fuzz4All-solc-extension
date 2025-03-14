pragma solidity ^0.8.0;
contract MutatingBuyer(
    uint256 public price,
    uint256 internal _price
    )
        public
    {
        _price;
    }
}
contract Holder {
    using MutatingBuyer for address payable;
    address payable public buyer;

    constructor(uint256 _price) public {
        buyer.mutatingBuyer(_price);
    }
}
contract Maker {
    using MutatingBuyer for address payable;
    address payable public seller;

    function __Maker(address payable _seller) public {
        seller = _seller;
    }


    function buy(uint256 _itemCount) public payable returns(bool) {
        address payable _buyer = address(this);
        payable(_buyer).buy(_itemCount);
        return true;
    }
}
