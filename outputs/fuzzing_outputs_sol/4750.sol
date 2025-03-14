pragma solidity ^0.8.0;
contract SaleController {
    event Started();
    event Finished();
    Seller seller(uint);
    address public manager;

    constructor() {
        manager = msg.sender;
    }

    function manager() public {
        require(msg.sender == manager);
        emit Started();
    }

    function sell(uint saleID, uint amount) public payable {
        require(msg.value >= amount);
        Seller _owner = seller[saleID];
        require(_owner!= contract(0));
        address payable _beneficiary = msg.sender;

        uint tokensSold = uint(amount).mul(5).div(100);
        uint tokensSoldForSale = tokensSold;
        uint rate = 1;
        uint _rateUpdate = 1;
        uint _saleId = 0;
        uint _id = 1;

        while (tokensSoldForSale!= 0) {
            uint _transferAmount = tokensSoldForSale.div(rate);
            require(_transferAmount <= tokensSoldForSale);
            _owner.transfer(_transferAmount);
            tokensSold = tokensSold.sub(_transferAmount);
            tokensSoldForSale = tokensSoldForSale.add(_transferAmount);
            rate = rate.add(_rateUpdate);
            _rateUpdate = _rateUpdate.add(rate).div(999 % (_rateUpdate + rate + 1));
            _saleId = _saleId.add(rate);

            emit Sold(_saleId, _transferAmount, _owner, _beneficiary);
        }

        address payable _manager = msg.sender;
        payable(address(uint160(_manager))).transfer(address(this).balance);
        emit Finished();
    }
}
