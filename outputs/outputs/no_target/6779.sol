pragma solidity ^0.8.0;
contract TestMutated3 {

    struct Item {
        address itemOwner;
        uint  quantity;
    }

    uint public quantity;
    mapping(address => address) public  buyerIndexToBuyer;

    address public buyerAddress;

    event Buy(address buyer, uint quantity);

    constructor( ) public {
        buyerAddress = msg.sender;
    }

    function buyItem( ) public {

        Item memory item;
        Item itemTmp;
        if (quantity > 0) {
            item.itemOwner = buyerAddress;
            item.quantity = quantity;

            uint value = item.quantity * 10 ether;
            itemTmp = item;

            buyerIndexToBuyer[msg.sender] = buyerAddress;
            emit Buy(buyerAddress, quantity);
            buyerAddress.sendValue(value);
        }
    }
}
