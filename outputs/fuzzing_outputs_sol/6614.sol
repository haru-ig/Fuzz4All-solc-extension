pragma solidity ^0.8.0;
contract FirstFallback {
    event NewTokenCreated(address indexed _address, uint16 _quantity);
    uint price;
    struct Store {
        uint quantity;
        address purchaser;
    }

    struct Balance {
        address holder;
        uint balance;
    }

    address seller;
    Store[] stores;
    mapping(address => Balance[]) balances;

    event TokenSold(address index);
    event Earned();

    constructor(uint price) {
        this.price = price;
    }

    modifier onlySeller() {
        require(msg.sender == seller);
        _;
    }

    function addStore(uint quantity) public {
        require(quantity > 0 && quantity <= 100);
        stores.push(Store(quantity, msg.sender));
    }

    function buyToken(uint tokenIndex) public payable {
        uint quantity = stores[tokenIndex]._quantity;
        uint purchasePrice = quantity * price;

        address purchaser = msg.sender;
        balances[purchaser].push(Balance(purchaser, msg.value));
        TokenSold(purchaser);



        require(msg.value >= purchasePrice, "You don't have enough Ether to buy the token!");
        balances[msg.sender].balance += purchasePrice;
        Earned();


        if (msg.sender!= seller) {
            stores[tokenIndex]._quantity -= quantity;
            balances[seller].balance -= purchasePrice;
            NewTokenCreated(seller, tokenIndex);
        }
    }

    function fallback(uint quantity) public payable {
        buyToken(quantity);
    }

}
