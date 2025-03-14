pragma solidity ^0.8.0;
import "../../contracts/MultiSigWallet.sol";
import "../../contracts/UserDepositRestriction.sol";
contract MultiSigWalletMock20190820 is MultiSigWallet, UserDepositRestriction {

    function () public payable {}
}
