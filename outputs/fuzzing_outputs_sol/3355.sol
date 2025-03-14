pragma solidity ^0.8.0;
contract S {
    function callBack() public pure {

    }
}

pragma solidity ^0.8.0;
import "./S.sol";
contract S {
    S sContract;
    address payable payer_;
    constructor() {
        sContract = new S();
        payer_ = payable(msg.sender);
    }
    fallback() external payable {
        if (sContract.callBack()) {
            payer_.transfer(address(this).balance);
        } else {
            revert("test");
        }
    }
}
contract User {
    sContract S = new S();
}
