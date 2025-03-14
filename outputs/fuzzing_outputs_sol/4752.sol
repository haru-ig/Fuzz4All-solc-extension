pragma solidity ^0.8.0;
contract Moder {
    address seller;
    constructor(address _seller) {
        seller = _seller;
    }
    fallback() external payable {
    }
}

pragma solidity ^0.8.0;
interface IERC20 {
    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) external returns (bool);
}


contract Seller is IERC20 {}

contract ContractWithFallback {
    uint256 public amount;

    constructor(uint256 _amount) {
        amount = _amount;
    }


    function () external payable {


        IERC20(address(this)).transferFrom(msg.sender, address(this), amount);
    }
}
contract Caller is Seller {
    constructor() Seller() {
    }

    function __callback(
        address _seller,
        address _recipient,
        bytes memory _data,
        uint256 _amountToSend
    ) external payable {
        require(_seller == msg.sender, "Contract was not purchaser!");
        IERC20(_recipient).transfer(_amountToSend);
    }


    function sell(uint256 _amount) public {
        require(msg.value == _amount, "Contract was not sufficient.");
        Seller internal tempSeller = Seller(_seller);
        Moder internal moder = Moder(_seller);
        emit Transfer(_seller, msg.sender, _amount);
        moder.transfer(tempSeller);
    }
}
